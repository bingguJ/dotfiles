#!/bin/bash


echo "Yi's linux development environment setup"
# never intended to be a full automatic setup
# maybe for shell customization I should leave it to each individual computer
# using a zsh might be easier to transfer to other machine

# fish installation
#sudo apt-add-repository ppa:fish-shell/release-3
#sudo apt-get update
#sudo apt-get install fish
#sudo chsh -s 'which fish'
#ln -sf ~/dotfiles/fish_prompt.fish ~/.config/fish/functions/fish_prompt.fish
#ln -sf ~/dotfiles/config.fish ~/.config/fish/config.fish

# vim setup

# vim 8.2 install
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

# nodejs 14 install
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs

# fzf install

# rg install
sudo add-apt-repository ppa:x4121/ripgrep
sudo apt-get update
sudo apt install ripgrep

# vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Open vim and PlugInstall

# setup soft links
ln -sf ~/dotfiles/vimrc ~/.vimrc
#ln -sf ~/dotfiles/onedark.vim ~/.vim/plugged/onedark.vim/autoload/onedark.vim

# dircolors
ln -sf ~/dotfiles/dircolors ~/.dircolors
# add following two lines into ~/.bashrc or ~/.zshrc
# dircolors alias
# eval "`dircolors -b ~/.dircolors`"
# alias ls='ls --color=auto'

# zshell setup
sudo apt install zsh
# oh my zshell install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# good themes are af-magic, crunch and half-life
# change them in .zshrc

