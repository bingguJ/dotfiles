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

# vim setup

# vim 8.2 install
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim

# fzf install

# rg install
sudo add-apt-repository ppa:x4121/ripgrep
sudo apt-get update

# vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Open vim and PlugInstall

# setup soft links
ln -sf ~/dotfiles/vimrc ~/.vimrc
ln -sf ~/dotfiles/dircolors ~/.dircolors
ln -sf ~/dotfiles/onedark.vim ~/.vim/plugged/onedark.vim/autoload/onedark.vim

#ln -s /home/eternity/dotfiles/fish_prompt.fish /home/eternity/.config/fish/functions/fish_prompt.fish

