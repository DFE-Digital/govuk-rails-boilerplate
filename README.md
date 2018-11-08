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
4. Run `bundle exec foreman start` to launch the app on http://localhost:5000.
