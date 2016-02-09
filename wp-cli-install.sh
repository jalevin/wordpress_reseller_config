#!/bin/bash
#install wp-cli

mkdir -p ~/bin
cwd /bin
wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar

#add to .bashrc to load at login
sed -i 'source "$HOME/bin/wp-completion.bash"' ~/.bashrc
sed -i 'export PATH="$HOME/bin:$PATH"' ~/.bashrc

source ~/.bashrc
