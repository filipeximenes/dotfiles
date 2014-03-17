
if [[ "$OSTYPE" == 'linux-gnu' ]]; then
    cp ~/.config/sublime-text-2/Packages/User/* .sublime_conf/
else
    cp ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/* .sublime_conf/
fi
