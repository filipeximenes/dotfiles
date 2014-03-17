
if [[ "$OSTYPE" == 'linux-gnu' ]]; then
    rsync -cp ~/.config/sublime-text-2/Packages/User/* .sublime_conf/
else
    rsync -cp ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/* .sublime_conf/
fi
