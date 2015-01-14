gulp = require 'gulp'

dictionaries = require '../../dictionaries'

gulp.task 'client/assets', () ->

	gulp.src dictionaries.assets + '/**'
	.pipe gulp.dest dictionaries.dest.public + '/assets'
