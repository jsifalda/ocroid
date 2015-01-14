gulp = require 'gulp'
coffee = require 'gulp-coffee'

dictionaries = require '../dictionaries'

gulp.task 'coffee', () ->

	gulp.src dictionaries.src.server + '/**/*.coffee'
	.pipe coffee()
	.pipe gulp.dest dictionaries.dest.app

gulp.task 'coffee-watch', () ->

	gulp.watch dictionaries.src.server + '/**/*.coffee', ['coffee']

gulp.task 'templates', () ->

	gulp.src dictionaries.src.server + '/**/*.jade'
	.pipe gulp.dest dictionaries.dest.app

gulp.task 'templates-watch', () ->

	gulp.watch dictionaries.src.server + '/**/*.jade', ['templates']


gulp.task 'default', ['development']
