gulp = require 'gulp'
config = require '../../config'

gulp.task 'development/config', () ->

	config.env = 'development'
