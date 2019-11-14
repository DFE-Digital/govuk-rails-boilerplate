[![Build Status](https://travis-ci.org/DFE-Digital/govuk-rails-boilerplate.svg?branch=master)](https://travis-ci.com/DFE-Digital/govuk-rails-boilerplate) [![Greenkeeper badge](https://badges.greenkeeper.io/DFE-Digital/govuk-rails-boilerplate.svg)](https://greenkeeper.io/)

# GOV.UK Rails Boilerplate

## Prerequisites

- Ruby 2.6.5
- PostgreSQL
- NodeJS 12.13.x
- Yarn 1.12.x

## Setting up the app in development

1. Run `bundle install` to install the gem dependencies
2. Run `yarn` to install node dependencies
3. Run `bin/rails db:setup` to set up the database development and test schemas, and seed with test data
4. Run `bundle exec rails server` to launch the app on http://localhost:3000
5. Run `./bin/webpack-dev-server` in a separate shell for faster compilation of assets

## Whats included in this boilerplate?

- Rails 6.0 with Webpacker
- [GOV.UK Frontend](https://github.com/alphagov/govuk-frontend)
- [GOV.UK Lint](https://github.com/alphagov/govuk-lint)
- RSpec
- Dotenv (managing environment variables)
- Travis with Heroku deployment

## Running specs, linter(without auto correct) and annotate models and serializers
```
bundle exec rake
```

## Running specs
```
bundle exec rspec
```

## Linting

It's best to lint just your app directories and not those belonging to the framework, e.g.

```bash
bundle exec govuk-lint-ruby app config db lib spec Gemfile --format clang -a

or

bundle exec govuk-lint-sass app/webpacker/styles
```
