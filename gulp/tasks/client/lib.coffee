gulp = require 'gulp'
bowerFiles = require 'main-bower-files'
concat = require 'gulp-concat'

dictionaries = require '../../dictionaries'

gulp.task 'client/lib', ->

	gulp.src bowerFiles(env: 'production')
		.pipe(concat("1_lib.js"))
		.pipe(gulp.dest(dictionaries.dest.public + '/js/'))
