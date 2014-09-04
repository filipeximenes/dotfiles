
if [[ "$OSTYPE" == 'linux-gnu' ]]; then
    rsync -cp -r ~/.config/sublime-text-2/Packages/User/* .sublime_conf/
else
    rsync -cp -r ~/Library/Application\ Support/Sublime\ Text\ 2/Packages/User/* .sublime_conf/
fi
