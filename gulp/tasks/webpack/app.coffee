gulp = require 'gulp'
webpack = require 'gulp-webpack'

config = require '../../config'
dictionaries = require '../../dictionaries'
webpackConfigBuilder = require '../../webpack/configBuilder'

gulp.task 'webpack/app', () ->

	webpackConfig = webpackConfigBuilder config

	gulp.src dictionaries.src.client + '/app.cjsx'
	.pipe webpack webpackConfig
	.pipe gulp.dest dictionaries.dest.public + '/js'
