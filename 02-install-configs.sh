#!/bin/sh

DIR="$( cd -P "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# zsh
ln -s ${DIR}/home/.zshrc ~/.zshrc
ln -s ${DIR}/home/.zshenv ~/.zshenv

# oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
ln -s ${DIR}/home/.oh-my-zsh/themes/beloglazov-remote.zsh-theme ~/.oh-my-zsh/themes/beloglazov-remote.zsh-theme

# other
ln -s ${DIR}/home/.gitconfig ~/.gitconfig
ln -s ${DIR}/home/.emacs.d ~/.emacs.d
ln -s ${DIR}/home/.nanorc ~/.nanorc
ln -s ${DIR}/home/.terminfo ~/.terminfo

# backup directories
mkdir ~/.backups
mkdir ~/.backups/nano
mkdir ~/.backups/emacs

# bin
mkdir ~/bin
ln -s ${DIR}/home/bin/mem ~/bin/mem

# ranger
if command -v ranger >/dev/null 2>&1; then
	mkdir -p ~/.config/ranger
	ranger --copy-config=scope
fi
