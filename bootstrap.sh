#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" --exclude "mac_fresh_install.sh" \
		--exclude "sync_sublime3.sh" --exclude=".sublime3_conf/" -av --no-perms . ~
	source ~/.bash_profile
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt


if [[ "$OSTYPE" == 'linux-gnu' ]]; then
    cp .sublime3_conf/* ~/.config/sublime-text-3/Packages/User/
else
    cp .sublime3_conf/* ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User
fi
