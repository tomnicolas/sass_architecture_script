read NAME
mkdir $NAME
cd $NAME/
cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title></title>

</head>
<boby>
</body>
</html>
EOF
mkdir sass
cd sass/
cat > _main.scss << EOF
@import "utils/variables";
@import "utils/mixins";

@import "pages/home";

@import "layout/header";
@import "layout/footer";
@import "layout/navbar";
@import "layout/forms";

@import "components/buttons";
EOF
mkdir utils pages layout components
cd utils/
touch _mixins.scss _variables.scss
cd ./../pages
touch _home.scss
cd ./../layout 
touch _header.scss _footer.scss _navbar.scss _forms.scss
cd ./../components/
touch _buttons.scss
cd ./../../
cat > sass-watch-launcher.sh << EOF
sass sass/_main.scss:style.css --watch
EOF
chmod +x sass-watch-launcher.sh

