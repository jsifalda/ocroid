gulp = require 'gulp'
config = require '../../config'

gulp.task 'production/config', () ->

	config.env = 'production'
