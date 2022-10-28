# sass_architecture_creator_script

A small script to create a sass architecture with an input name, index.html, severals directories and a sass compile and watch file.
Feel free to modify it at your convenience.

input_name
    sass
        components
            _button.scss
        layout
            _footer.scss
            _forms.scss
            _header.scss
            _navbar.Scss
        pages 
            _home.scss
        utils
            _mixins.scss
            _variables.scss
        _main.scss              (include the @import of every .scss files)
    index.html                  (include <head> with link to style.css)
    sass-watch-launcher.sh      (compile file style.css and create style.css.map)
            
