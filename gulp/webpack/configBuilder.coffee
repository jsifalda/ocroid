webpack = require 'webpack'

module.exports = (config) ->
  
  isProduction = ->
    return true  if config.env is "production"
    false

  entry : config.root + '/src/client/index'
  context: config.root
  module:
    loaders: [
      {
        test: /\.coffee$/
        loader: "coffee-loader"
        exclude : /node_modules/
      }

      {
        test: /\.tag$/ 
        loader: "tag"
        exclude : /node_modules/
        query : 
          type : 'coffeescript'
      }
      
      {
        test: /\.js$/ # loaders can take parameters as a querystring
        loader: "jsx-loader?harmony"
        exclude : /node_modules/
      }
    ]

  output:
    path: config.root
    filename: "[name].js" # Template based on keys in entry above

  watch: (if isProduction() then false else true)

  externals : {
    "React" : "React"
    "jQuery" : "jQuery"
    "bluebird" : "Promise"
    "fluxxor" : "Fluxxor"
    "riot" : "riot"
    "riot-control" : "RiotControl"
    "underscore" : "_"
  }

  resolve:

    # root : config.root + '/lib/client/bower'
    
    extensions: [
      ""
      ".js"
      ".json"
      ".coffee"
      ".cjsx"
    ]
