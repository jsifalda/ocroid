config = require './config'

dictionaries = {

	root : config.root
	
	src : {}
	
	dest : {}

}

dictionaries.gulp = dictionaries.root + '/gulp'
dictionaries.assets = dictionaries.root + '/assets'

dictionaries.src.client = dictionaries.root + '/src/client'
dictionaries.src.server = dictionaries.root + '/src/server'

dictionaries.dest.root = dictionaries.root + '/dist'
dictionaries.dest.app = dictionaries.dest.root + '/app'
dictionaries.dest.public = dictionaries.dest.root + '/public'

module.exports = dictionaries
