gulp = require 'gulp'

gulp.task 'production', [
	'production/config'
	'build'
]
