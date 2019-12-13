FROM ministryofjustice/ruby:2.6.3

ARG APPNAME=govuk-rails-boilerplate

# https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -

# make sure we get an up-to-date yarn & nodejs
USER root
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |  apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" |  tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y nodejs postgresql-contrib libpq-dev yarn


ENV RAILS_ROOT /var/www/${APPNAME}
RUN mkdir -p $RAILS_ROOT
WORKDIR $RAILS_ROOT

RUN groupadd -r deploy && useradd -m -u 1001 -r -g deploy deploy
RUN chown deploy:deploy /var/www/${APPNAME}

ENV BUNDLER_VERSION 2.0.2
RUN gem install bundler
RUN chown -R deploy:deploy /usr/local/bundle/
USER 1001


# install all gems
COPY --chown=deploy:deploy Gemfile Gemfile.lock .ruby-version ./
ARG BUNDLE_FLAGS="--jobs 2 --no-cache --without development test"
RUN bundle install ${BUNDLE_FLAGS}
RUN bundle package --all


COPY --chown=deploy:deploy . .



# allow access to port 3000
ENV APP_PORT 3000
EXPOSE $APP_PORT

# precompile assets
RUN yarn
ARG RAILS_ENV=production
RUN RAILS_ENV=${RAILS_ENV} SECRET_KEY_BASE=$(bin/rake secret) bundle exec rails webpacker:compile

# run the rails server
ARG RAILS_ENV=production
CMD bundle exec rake db:migrate && bundle exec rake db:migrate && bundle exec rails s -e ${RAILS_ENV} -p ${APP_PORT} --binding=0.0.0.0
