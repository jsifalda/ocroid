scriptsLoader = require 'scripts-loader'

config = require './config'

scriptsLoader.load config.root + '/gulp/tasks', {
	verbose : false
	endings : 'js|coffee'
}
