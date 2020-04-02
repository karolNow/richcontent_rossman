now="$(date +'%Y-%m-%d-')"
echo "Cześć program słuzy do tworzenia struktury plików rich-content"
echo -n "Podaj nazwę folderu "
read nazwa
echo "Tworze plik o nazwie : $nazwa"
echo -n "Podaj nazwę/kod produktu potrzebnego do katalogów rossmanna"
read produkt


#stwórz folder scr i test oraz js
mkdir -p $nazwa/$now$nazwa/$nazwa-app/src/{js,sass,img}

cat >  $nazwa/$now$nazwa/$nazwa-app/src/js/app.js <<EOF
import main from './main.js';
main();
EOF

cat >  $nazwa/$now$nazwa/$nazwa-app/src/js/main.js <<EOF
import '../sass/styles.scss';

export default () => {
    const done = "i did it"
    console.log(done)
    
}
EOF


cat >  $nazwa/$now$nazwa/$nazwa-app/index.html <<EOF

<!DOCTYPE html>
<html lang="pl">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>$nazwa richcontent</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.1/css/bootstrap-grid.css">
</head>
<body>
<div class="grd-$nazwa-richcontent">
    <section>
      <h1>richcontent</h1>
    </section>
    <section>
      <h1>richcontent</h1>
    </section>
    <section>
      <h1>richcontent</h1>
    </section>
    <section>
      <h1>richcontent</h1>
    </section>
    <section>
      <h1>richcontent</h1>
    </section>
  </div>
</body>
</html>

EOF

#Sass i podfoldery sassa
mkdir -p $nazwa/$now$nazwa/$nazwa-app/src/sass/components/{body,mobile,small,medium,large} | touch $nazwa/$now$nazwa/$nazwa-app/src/sass/components/{body,mobile,small,medium,large}/{fonts,animations,buttons,header,video,product,footer,sec1,sec2,sec3,sec4,sec5}.scss
mkdir -p $nazwa/$now$nazwa/$nazwa-app/src/sass/media | touch $nazwa/$now$nazwa/$nazwa-app/src/sass/media/{mobile,small,medium,large}.scss
mkdir -p $nazwa/$now$nazwa/$nazwa-app/src/sass/main | touch $nazwa/$now$nazwa/$nazwa-app/src/sass/main/{variables,mixins,body,global}.scss

cat > $nazwa/$now$nazwa/$nazwa-app/src/sass/main/body.scss <<\EOF
@import "src/sass/components/body/fonts.scss";
@import "src/sass/components/body/animations.scss";
@import "src/sass/components/body/buttons.scss";
@import "src/sass/components/body/header.scss";
@import "src/sass/components/body/video.scss";
@import "src/sass/components/body/product.scss";
@import "src/sass/components/body/footer.scss";
@import "src/sass/components/body/sec1.scss";
@import "src/sass/components/body/sec2.scss";
@import "src/sass/components/body/sec3.scss";
@import "src/sass/components/body/sec4.scss";
@import "src/sass/components/body/sec5.scss";
EOF

cat > $nazwa/$now$nazwa/$nazwa-app/src/sass/media/large.scss <<\EOF
@include large{
@import "src/sass/components/large/fonts.scss";
@import "src/sass/components/large/animations.scss";
@import "src/sass/components/large/buttons.scss";
@import "src/sass/components/large/header.scss";
@import "src/sass/components/large/video.scss";
@import "src/sass/components/large/product.scss";
@import "src/sass/components/large/footer.scss";
@import "src/sass/components/large/sec1.scss";
@import "src/sass/components/large/sec2.scss";
@import "src/sass/components/large/sec3.scss";
@import "src/sass/components/large/sec4.scss";
@import "src/sass/components/large/sec5.scss";
}
EOF

cat > $nazwa/$now$nazwa/$nazwa-app/src/sass/media/medium.scss <<\EOF
@include medium{
@import "src/sass/components/medium/fonts.scss";
@import "src/sass/components/medium/animations.scss";
@import "src/sass/components/medium/buttons.scss";
@import "src/sass/components/medium/header.scss";
@import "src/sass/components/medium/video.scss";
@import "src/sass/components/medium/product.scss";
@import "src/sass/components/medium/footer.scss";
@import "src/sass/components/medium/sec1.scss";
@import "src/sass/components/medium/sec2.scss";
@import "src/sass/components/medium/sec3.scss";
@import "src/sass/components/medium/sec4.scss";
@import "src/sass/components/medium/sec5.scss";
}
EOF

cat > $nazwa/$now$nazwa/$nazwa-app/src/sass/media/small.scss <<\EOF
@include small{
@import "src/sass/components/small/fonts.scss";
@import "src/sass/components/small/animations.scss";
@import "src/sass/components/small/buttons.scss";
@import "src/sass/components/small/header.scss";
@import "src/sass/components/small/video.scss";
@import "src/sass/components/small/product.scss";
@import "src/sass/components/small/footer.scss";
@import "src/sass/components/small/sec1.scss";
@import "src/sass/components/small/sec2.scss";
@import "src/sass/components/small/sec3.scss";
@import "src/sass/components/small/sec4.scss";
@import "src/sass/components/small/sec5.scss";
}
EOF

cat > $nazwa/$now$nazwa/$nazwa-app/src/sass/media/mobile.scss <<\EOF
@include mobile{
@import "src/sass/components/mobile/fonts.scss";
@import "src/sass/components/mobile/animations.scss";
@import "src/sass/components/mobile/buttons.scss";
@import "src/sass/components/mobile/header.scss";
@import "src/sass/components/mobile/video.scss";
@import "src/sass/components/mobile/product.scss";
@import "src/sass/components/mobile/footer.scss";
@import "src/sass/components/mobile/sec1.scss";
@import "src/sass/components/mobile/sec2.scss";
@import "src/sass/components/mobile/sec3.scss";
@import "src/sass/components/mobile/sec4.scss";
@import "src/sass/components/mobile/sec5.scss";
}
EOF

cat > $nazwa/$now$nazwa/$nazwa-app/src/sass/main/variables.scss <<\EOF
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

cat > $nazwa/$now$nazwa/$nazwa-app/src/sass/main/mixins.scss <<\EOF
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


cat >  $nazwa/$now$nazwa/$nazwa-app/src/sass/styles.scss <<\EOF
@import "main/variables.scss";
@import "main/mixins.scss";
@import "main/body.scss";


@import "media/large.scss";
@import "media/medium.scss";
@import "media/small.scss";
@import "media/mobile.scss";
EOF


#pozostałe foldery
mkdir -p $nazwa/$now$nazwa/$nazwa-materiały
mkdir -p $nazwa/$now$nazwa/$nazwa-wydane

#stwórz plik pkg-jason
cat > $nazwa/$now$nazwa/$nazwa-app/package.json <<EOF
{
  "name": "$nazwa-rossmann-webpackapp",
  "version": "1.0.0",
  "description": "rossman on webpack",
  "main": "app.js",
  "scripts": {
    "build": "webpack --env.NODE_ENV=production -p",
    "view": "webpack --env.NODE_ENV=development",
    "dev": "webpack-dev-server  --env.NODE_ENV=development"
  },
  "author": "kaNow",
  "license": "ISC",
  "dependencies": {
    "@babel/core": "^7.2.2",
    "@babel/preset-env": "^7.3.1",
    "babel-loader": "^8.0.5",
    "babel-preset-env": "^1.7.0",
    "clean-webpack-plugin": "^1.0.1",
    "css-loader": "^2.1.0",
    "file-loader": "^3.0.1",
    "html-loader": "^0.5.5",
    "html-webpack-plugin": "^3.2.0",
    "mini-css-extract-plugin": "^0.5.0",
    "node-sass": "^4.11.0",
    "postcss-loader": "^3.0.0",
    "postcss-scss": "^2.0.0",
    "sass-loader": "^7.1.0",
    "style-loader": "^0.23.1",
    "webpack": "^4.29.3",
    "webpack-dev-server": "^3.1.14"
  },
  "devDependencies": {
    "webpack-cli": "^3.2.3"
  }
}

EOF

#stwórz plik webpacka
cat > $nazwa/$now$nazwa/$nazwa-app/webpack.config.js <<EOF

const path = require('path');
const HTMLWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const CleanWebpackPlugin = require('clean-webpack-plugin');


module.exports = env => {
    const mode = env.NODE_ENV;
    const devMode = mode !== 'production';
    return {
        mode: mode,
        entry: './src/js/app.js',
        output: {
            path: path.resolve(__dirname + '/dist-$nazwa'),
            filename: 'js/boundle.js',
            publicPath: devMode ? '' : 'https://www.ros.net.pl/Portals/0/rich-content/$produkt'
        },
        plugins: [
            new HTMLWebpackPlugin({
                filename: 'index.html',
                template: './index.html'
            }),
            new MiniCssExtractPlugin({
                filename: "css/main.css"
            }),
            new CleanWebpackPlugin(['dist-$nazwa']),
        ],
        module: {
            rules: [{
                    test: /\.js$/,
                    use: [{
                        loader: 'babel-loader',
                        options: {
                            presets: ['@babel/preset-env'],
                        }
                    }]
                },
                {
                    test: /\.scss$/,
                    use: [{
                            loader: MiniCssExtractPlugin.loader,
                            options: {
                                publicPath: devMode ? '' : 'https://www.ros.net.pl/Portals/0/rich-content/$produkt'
                            }
                        },
                        'css-loader',
                        'sass-loader',
                        {
                            loader: 'postcss-loader',
                            options: {
                                parser: 'postcss-scss'
                            }
                        }
                    ],
                },
                {
                    test: /\.html$/,
                    use: {
                        loader: 'html-loader',
                    }
                },
                {
                    test: /\.(png|jpg|gif)$/,
                    use: [{
                        loader: "file-loader",
                        options: {
                            name: 'img/[name].[ext]',
                            publicPath: devMode ? '' : 'https://www.ros.net.pl/Portals/0/rich-content/$produkt'
                        },
                    }]
                },

            ]
        }
    }
}

EOF

#stwórz plik gitignore
cat > $nazwa/$now$nazwa/$nazwa-app/.gitignore <<EOF
node_modules
dist
EOF


#instaluj 

echo "Instaluje moduły noda może chwile potrwać ..."
cd $nazwa/$now$nazwa/$nazwa-app
npm install

echo "inicjalizuje gita"
git init

echo "Skończyłem. Foldery rich-content o nazie $nazwa - $produkt zostały przygotowane"
code .
