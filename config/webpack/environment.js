const { environment } = require('@rails/webpacker')
const coffee =  require('./loaders/coffee')
const customConfig = require('./webpack.config')

environment.loaders.prepend('coffee', coffee)
environment.config.merge(customConfig)

module.exports = environment
