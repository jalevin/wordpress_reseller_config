#!/bin/bash
#install wp-cli

mkdir -p ~/bin;
wget  -O ~/bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar;
wget  -O ~/bin/wp-completion.bash https://github.com/wp-cli/wp-cli/raw/master/utils/wp-completion.bash
chmod +x ~/bin/wp-cli.phar

#add to .bashrc to load at login
echo '#add wp-cli to path and autocomplete"' | cat - ~/.bashrc > temp && mv temp ~/.bashrc 
echo 'source ~/bin/wp-completion.bash' | cat - ~/.bashrc > temp && mv temp ~/.bashrc 
echo 'export PATH="$HOME/bin:$PATH"'     | cat - ~/.bashrc > temp && mv temp  ~/.bashrc
source ~/.bashrc
