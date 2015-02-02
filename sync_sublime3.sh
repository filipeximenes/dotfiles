
if [[ "$OSTYPE" == 'linux-gnu' ]]; then
    rsync -cp -r ~/.config/sublime-text-3/Packages/User/* .sublime3_conf/
else
    rsync -cp -r ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/* .sublime3_conf/
fi
