var gulp = require('gulp');
var sass = require('gulp-sass');
var minifyCss = require('gulp-minify-css');

gulp.task('sass', function(){
  return gulp.src('sass/*.scss')
    .pipe(sass())
    .pipe(gulp.dest('sass/css/'))
});

gulp.task('minify-css', function() {
  return gulp.src('sass/css/*.css')
    .pipe(minifyCss({compatibility: 'ie8'}))
    .pipe(gulp.dest('sass/css/min/'));
});

gulp.watch('sass/main.scss', ['sass', 'minify-css']); 

gulp.task('default', ['sass', 'minify-css']);
