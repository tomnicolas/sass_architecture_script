cat > index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title></title>

</head>
<boby>
</body>
</html>
EOF
mkdir sass css
cd sass/
cat > _main.scss << EOF
@import "utils/variables";
@import "utils/mixins";

@import "base/base";

@import "pages/home";
@import "pages/contact";

@import "layout/header";
@import "layout/footer";
@import "layout/navbar";
@import "layout/forms";

@import "components/buttons";
EOF
mkdir utils pages layout components base
cd utils/
touch _mixins.scss _variables.scss
cd ./../pages
touch _home.scss _contact.scss
cd ./../layout 
touch _header.scss _footer.scss _navigation.scss _forms.scss
cd ./../base
touch _typography.scss _normalyse.scss
cd ./../components
touch _buttons.scss
cd ./../../
cat > sass-watch-launcher.sh << EOF
sass sass/_main.scss:css/style.css --watch
EOF
chmod +x sass-watch-launcher.sh
rm sass_archi_maker.sh
git add *
git commit -m "sass architecture"
git push

