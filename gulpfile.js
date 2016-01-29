/* ********************
 * Gulp for lexelius_se
 * ******************** */

var gulp = require('gulp'),
	 sass = require('gulp-sass'),
	 minifyCss = require('gulp-minify-css'),
	 watch = require('gulp-watch'),
	 rename = require('gulp-rename'),
	 livereload = require('gulp-livereload');

gulp.task('sass', function() {
	return gulp.src('sass/*.scss')				// source of sass
	.pipe(sass().on('error', sass.logError))	// run sass to css
	.pipe(gulp.dest('sass/css/'))					// save css here
});

gulp.task('minify-css', function() {
	return gulp.src('sass/css/*.css')			// source of css
	.pipe(minifyCss({compatibility: 'ie8'}))	// run minify css
	.pipe(rename({suffix:'.min'}))				// rename to min
	.pipe(gulp.dest('sass/css/min/'))			// save it here
	.pipe(livereload());
});

gulp.task('watch', function() {
	gulp.watch('sass/*.scss', ['sass']); 				// watch and run sass
	gulp.watch('sass/css/*.css', ['minify-css']); 	// watch and run minify-css
	livereload.listen();
	gulp.watch(['sass/css/min/*.css']).on('change', livereload.changed);
	gulp.watch(['index.php']).on('change', livereload.changed);
	gulp.watch(['include/*.html']).on('change', livereload.changed);
	gulp.watch(['js/*.js']).on('change', livereload.changed);
});

/* Do this when started */
gulp.task('default', ['sass', 'minify-css', 'watch']);
