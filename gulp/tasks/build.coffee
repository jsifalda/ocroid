gulp = require 'gulp'

gulp.task 'build', [
	'clean'
	'coffee'
	'templates'
	'webpack/app'
	'client/lib'
	'client/assets'
]
