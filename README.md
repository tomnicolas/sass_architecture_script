# sass_architecture_creator_script 5.1

A small script to create a 5.1 sass architecture with an index.html, severals directories and a sass compile and watch file.

The script will commit and push the changes automatically (the directory should have been cloned from a repo).

Copy the file .sh in your local directory and launch it. 
It will delete itself after executed.

    css
    sass
        utils
            _variables.scss
            _mixins.scss
        base
            _typography.scss
            _normalyse.scss
        pages 
            _home.scss
            _contact.scss
        layout
            _header.scss
            _footer.scss
            _navigation.scss
            _forms.scss
        components
            _buttons.scss
        _main.scss              (include the @import of every .scss files)
    index.html                  (include <head> with link to style.css)
    sass-watch-launcher.sh      (compile file css/style.css and create style.css.map)
            
