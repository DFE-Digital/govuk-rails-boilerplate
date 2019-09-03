process.env.NODE_ENV = process.env.NODE_ENV || 'production'
const CopyWebpackPlugin = require('copy-webpack-plugin')

const environment = require('./environment')

environment.config.plugins = (environment.config.plugins || []).concat([
  new CopyWebpackPlugin([
    { from: 'node_modules/govuk-frontend/govuk/assets/fonts/**/*', to: '../assets/fonts/', flatten: true },
    { from: 'node_modules/govuk-frontend/govuk/assets/images/**/*', to: '../assets/images/', flatten: true }
  ])
])

module.exports = environment.toWebpackConfig()
