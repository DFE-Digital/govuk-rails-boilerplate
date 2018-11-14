[![Build Status](https://travis-ci.org/DFE-Digital/dfe-rails-boilerplate.svg?branch=master)](https://travis-ci.com/DFE-Digital/dfe-rails-boilerplate)

# DfE Rails Boilerplate

## Prerequisites

- Ruby 2.5.3
- PostgreSQL
- NodeJS 8.11.x
- Yarn 1.12.x

## Setting up the app in development

1. Run `bundle install` to install the gem dependencies
2. Run `yarn` to install node dependencies
3. Run `bin/rails db:setup` to set up the database development and test schemas, and seed with test data.
4. Run `bundle exec foreman start -f Procfile.dev` to launch the app on http://localhost:5000.

## Linting

It's best to lint just your app directories and not those belonging to the framework, e.g.

```bash
bundle exec govuk-lint-ruby app lib spec
```
