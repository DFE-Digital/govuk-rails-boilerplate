[![Build Status](https://travis-ci.org/DFE-Digital/dfe-rails-boilerplate.svg?branch=master)](https://travis-ci.com/DFE-Digital/dfe-rails-boilerplate)

# DfE Rails Boilerplate

## Prerequisites

- Ruby 2.6.1
- PostgreSQL
- NodeJS 8.11.x
- Yarn 1.12.x

## Setting up the app in development

1. Run `bundle install` to install the gem dependencies
2. Run `yarn` to install node dependencies
3. Run `bin/rails db:setup` to set up the database development and test schemas, and seed with test data.
4. Run `bundle exec foreman start -f Procfile.dev` to launch the app on http://localhost:5000.

## Whats included in this boilerplate?

- Rails 5.2 with Webpacker
- SassC (replacement for deprecated sass-rails)
- [GOV.UK Frontend](https://github.com/alphagov/govuk-frontend)
- [GOV.UK Lint](https://github.com/alphagov/govuk-lint)
- Autoprefixer rails
- Browsersync
- RSpec
- Dotenv (managing environment variables)
- Travis with heroku deployment

## DfE SignIn

Example https://github.com/DFE-Digital/login.dfe.examples.rails

## Linting

It's best to lint just your app directories and not those belonging to the framework, e.g.

```bash
bundle exec govuk-lint-ruby app lib spec
```
