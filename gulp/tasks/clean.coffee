gulp = require 'gulp'
shell = require 'gulp-shell'

dictionaries = require '../dictionaries'

gulp.task 'clean', () ->

	shell.task [
		'rm -rf ' + dictionaries.dest.root
	]
