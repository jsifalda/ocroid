gulp = require 'gulp'

gulp.task 'development', [
	'development/config'
	'build'
	'coffee-watch'
	'templates-watch'
]
