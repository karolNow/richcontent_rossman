now="$(date +'%Y-%m-%d-')"
echo "Hi this little code help creates file structure for rich-content module development for Rossman pages. It installs, npm, Sass, Gulp and also creates basic .html .gulpfile.js and sass structure."
echo -n "Write name of project"
read name
echo "I'm creating: $name"


#stwórz folder scr i test
mkdir -p $name/$now$name/$name-test/src/{js,sass,img}
cat >  $name/$now$name/$name-test/src/index.html <<EOF
<!-- $name - Richcontent START -->

<p>
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700,800" rel="stylesheet">
  <link rel="stylesheet" href="Portals/0/rich-content/$name/css/styles.css">
</p>

  <div class="rc-$name container col-xs-12 col-sm-12 col-md-12 col-lg-12">

    <!-- HEADER -->
    <section class="rc-$name-header row col-xs-12 col-sm-12 col-md-12 col-lg-12">
      <div class="rc-$name-logo row col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <img src="Portals/0/rich-content/$name/img/..." alt="$name-logo">
      </div>
      <div class="rc-$name-heroimg row col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <img src="Portals/0/rich-content/$name/img/..." alt="$name-second-logo">
      </div>
      <div class="rc-$name-products row col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
        <img src="Portals/0/rich-content/$name/img/..." alt="$name-all-products">
        <h2></h2>
        <p></p>
      </div>
      <div class="rc-$name-products row col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <h3></h3>
        <p></p>
        <img src="Portals/0/rich-content/$name/img/..." alt="$name-im-products">
        <p></p>
        <ul>
          <li><p></p></li>
          <li><p></p></li>
          <li><p></p></li>
        </ul>
      </div>
    </section>

    <!-- PRODUKTS-LIST -->

    <section class="rc-$name-product-list row col-xs-12 col-sm-12 col-md-12 col-lg-12">
      <!-- PRODUKT 1 -->
      <div class="rc-$name-product01 row col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
        <div class="rc-$name-packshoot-hero row col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
          <img src="Portals/0/rich-content/$name/img/..." alt="">
        </div>
        <div class="rc-$name-packshoot row col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
          <img src="Portals/0/rich-content/$name/img/..." alt="">
        </div>
        <div class="rc-$name-button row col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
          <a href="#"></a>
        </div>
        <div class="rc-$name-text row col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <h3></h3>
          <p></p>
          <ul>
            <li></li>
          </ul>
        </div>
      </div>

      <!-- PRODUKTS-LIST-TEKST -->
      <div class="rc-$name-pl-text row col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
        <p></p>
      </div>

    </section>

    <!-- FOOTER -->
    <section class="rc-$name-footer row col-xs-12 col-sm-12 col-md-12 col-lg-12 ">
      <div class="rc-$name-footer-hero-img row col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <img src="Portals/0/rich-content/$name/img/..." alt="">
      </div>
      <div class="rc-$name-footer-hero-text row col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <h2><span></span></h2>
      </div>

      <!-- footer-produkty -->
      <div class="rc-$name-footer-hero-products row col-xs-12 col-sm-12 col-md-12 col-lg-12">
        <!-- f-produkt-01 -->
        <div class="rc-$name-f-product-01 row col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <h3></h3>
          <p></p>
          <img src="Portals/0/rich-content/$name/img/..." alt="">
        </div>
        <!-- f-produkt-02 -->
        <div class="rc-$name-f-product-02 row col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <h3></h3>
          <p></p>
          <img src="Portals/0/rich-content/$name/img/..." alt="">
        </div>
        <!-- f-produkt-03 -->
        <div class="rc-$name-f-product-03 row col-xs-12 col-sm-12 col-md-12 col-lg-12">
          <h3></h3>
          <p></p>
          <img src="Portals/0/rich-content/$name/img/..." alt="">
        </div>

      </div>
    </section>
  </div>

<!-- $name - Richcontent END -->
EOF

#Sass i podfoldery sassa
mkdir -p $name/$now$name/$name-test/src/sass/components/{body,mobile,small,medium,large} | touch $name/$now$name/$name-test/src/sass/components/{body,mobile,small,medium,large}/{animations,video,shapes,buttons,fonts,header,product,products,footer,footer-products}.scss
mkdir -p $name/$now$name/$name-test/src/sass/media | touch $name/$now$name/$name-test/src/sass/media/{mobile,small,medium,large}.scss
mkdir -p $name/$now$name/$name-test/src/sass/main | touch $name/$now$name/$name-test/src/sass/main/{variables,mixins,body}.scss

cat > $name/$now$name/$name-test/src/sass/main/body.scss <<\EOF
@import "src/sass/components/body/fonts.scss";
@import "src/sass/components/body/animations.scss";
@import "src/sass/components/body/buttons.scss";
@import "src/sass/components/body/header.scss";
@import "src/sass/components/body/video.scss";
@import "src/sass/components/body/shapes.scss";
@import "src/sass/components/body/products.scss";
@import "src/sass/components/body/product.scss";
@import "src/sass/components/body/footer-products.scss";
@import "src/sass/components/body/footer.scss";
EOF

cat > $name/$now$name/$name-test/src/sass/media/large.scss <<\EOF
@include large{
@import "src/sass/components/large/fonts.scss";
@import "src/sass/components/large/animations.scss";
@import "src/sass/components/large/buttons.scss";
@import "src/sass/components/large/header.scss";
@import "src/sass/components/large/video.scss";
@import "src/sass/components/large/shapes.scss";
@import "src/sass/components/large/products.scss";
@import "src/sass/components/large/product.scss";
@import "src/sass/components/large/footer-products.scss";
@import "src/sass/components/large/footer.scss";
}
EOF

cat > $name/$now$name/$name-test/src/sass/media/medium.scss <<\EOF
@include medium{
@import "src/sass/components/medium/fonts.scss";
@import "src/sass/components/medium/animations.scss";
@import "src/sass/components/medium/buttons.scss";
@import "src/sass/components/medium/header.scss";
@import "src/sass/components/medium/video.scss";
@import "src/sass/components/medium/shapes.scss";
@import "src/sass/components/medium/products.scss";
@import "src/sass/components/medium/product.scss";
@import "src/sass/components/medium/footer-products.scss";
@import "src/sass/components/medium/footer.scss";
}
EOF

cat > $name/$now$name/$name-test/src/sass/media/small.scss <<\EOF
@include small{
@import "src/sass/components/small/fonts.scss";
@import "src/sass/components/small/animations.scss";
@import "src/sass/components/small/buttons.scss";
@import "src/sass/components/small/header.scss";
@import "src/sass/components/small/video.scss";
@import "src/sass/components/small/shapes.scss";
@import "src/sass/components/small/products.scss";
@import "src/sass/components/small/product.scss";
@import "src/sass/components/small/footer-products.scss";
@import "src/sass/components/small/footer.scss";
}
EOF

cat > $name/$now$name/$name-test/src/sass/media/mobile.scss <<\EOF
@include mobile{
@import "src/sass/components/mobile/fonts.scss";
@import "src/sass/components/mobile/animations.scss";
@import "src/sass/components/mobile/buttons.scss";
@import "src/sass/components/mobile/header.scss";
@import "src/sass/components/mobile/video.scss";
@import "src/sass/components/mobile/shapes.scss";
@import "src/sass/components/mobile/products.scss";
@import "src/sass/components/mobile/product.scss";
@import "src/sass/components/mobile/footer-products.scss";
@import "src/sass/components/mobile/footer.scss";
}
EOF

cat > $name/$now$name/$name-test/src/sass/main/variables.scss <<\EOF
$kolor0: #000;
$kolor1: green;
$kolor2: red;
$kolor3: white;

// rozmiary do mixinow
$mobile: 768px;
$small: 992px;
$medium: 1200px;
$large: 2650px;

// rozmiary czcionek

//------------------ body
$bo-h1 :40px;
$bo-h2 :35px;
$bo-h3 :30px;
$bo-p  :18px;
$bo-li :24px;
//------------------ mobile
$mo-h1 :25px;
$mo-h2 :20px;
$mo-h3 :18px;
$mo-p  :16px;
$mo-li :20px;
//------------------ small
$sm-h1 :25px;
$sm-h2 :20px;
$sm-h3 :18px;
$sm-p  :16px;
$sm-li :16px;
//------------------ medium
$me-h1 :25px;
$me-h2 :20px;
$me-h3 :18px;
$me-p  :16px;
$me-li :16px;
//------------------ large
$lg-h1 :25px;
$lg-h2 :20px;
$lg-h3 :18px;
$lg-p  :16px;
$lg-li :16px;

EOF

cat > $name/$now$name/$name-test/src/sass/main/mixins.scss <<\EOF
@mixin text-reset(){
  margin-left: 0px;
  margin-right: 0px;
  margin-top: 0px;
  margin-bottom: 0px;
}

@mixin text-setup($size, $height){
  font-size: $size;
  line-height: $height
}

@mixin mobile{
  @media only screen and (max-width:#{$mobile - 1px}){
    @content;}
}

@mixin small{
  @media only screen and (min-width: #{$mobile}) and (max-width: #{$small - 1px} ){
    @content;}
}

@mixin medium{
  @media only screen and (min-width: #{$small}) and (max-width: #{$medium - 1px} ){
  @content;}
}

@mixin large{
  @media only screen and (min-width: #{$medium}) and (max-width: #{$large - 1px} ){
  @content;}
}
EOF


cat >  $name/$now$name/$name-test/src/sass/styles.scss <<\EOF
@import "main/variables.scss";
@import "main/mixins.scss";
@import "main/body.scss";


@import "media/large.scss";
@import "media/medium.scss";
@import "media/small.scss";
@import "media/mobile.scss";
EOF


#pozostałe foldery
mkdir -p $name/$now$name/$name-rossmann
mkdir -p $name/$now$name/$name-materiały
mkdir -p $name/$now$name/$name-wydane

#stwórz plik gulpa
cat > $name/$now$name/$name-test/gulpfile.js <<EOF

var gulp = require('gulp');
var directories = require('gulp')
var sass = require('gulp-sass');
var uglify = require('gulp-uglify');
var watch = require('gulp-watch');
const imagemin = require('gulp-imagemin');

gulp.task('imagemin', function(){
    gulp.src('src/img/*')
        .pipe(imagemin())
        .pipe(gulp.dest('Portals/0/rich-content/$name/img'))
        .pipe(gulp.dest('../smectaGo-rossmann/Portals/0/rich-content/$name/img'))
      });

gulp.task('copyHtml', function(){
  gulp.src('src/*.html')
  .pipe(gulp.dest('../$name-rossmann'))
});

gulp.task('sass', function(){
  gulp.src('src/sass/*.scss')
  .pipe(sass().on ('error', sass.logError))
  .pipe(gulp.dest('Portals/0/rich-content/$name/css'))
  .pipe(gulp.dest('../$name-rossmann/Portals/0/rich-content/$name/css'))
});

gulp.task('uglify', function(){
  gulp.src('src/js/*.js')
  .pipe(gulp.dest('Portals/0/rich-content/$name/js'))
  .pipe(gulp.dest('../$name-rossmann/Portals/0/rich-content/$name/js'))
});

gulp.task('message',function(){
  return console.log('poszło');
});

gulp.task ('default', [ 'uglify', 'sass', 'copyHtml','message'])

gulp.task('watch', function(){
  gulp.watch('src/sass/*.scss',['sass']);
  gulp.watch('src/js/*.js',['uglify']);
  gulp.watch('src/*.html',['copyHtml']);
});

EOF


#instaluj gulpa
cd $name/$now$name/$name-test
npm init
npm install --save -dev gulp
npm install --save -dev gulp-watch
npm install --save -dev gulp-sass
npm install --save -dev gulp-uglify
npm install --save -dev gulp-imagemin

echo "Finised. $name rich-content files structure is ready"
