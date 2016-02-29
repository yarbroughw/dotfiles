#!/usr/bin/env bash

# install and switch to zsh
sudo apt-get install zsh
chsh -s $(which zsh)
zsh

# install oh-my-zsh
sudo apt-get install curl
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install liquidprompt, copy to .lq
cd
git clone https://github.com/nojhan/liquidprompt.git
mv liquidprompt .lq
source .lq/liquidprompt
echo "[[ \$- = *i* ]] && source ~/.lq/liquidprompt" >> ~/.zshrc

# install vim-nox
sudo apt-get install vim-nox

# install spf13
sh <(curl https://j.mp/spf13-vim3 -L)

# symlink personal vim config file
git clone https://github.com/yarbroughw/dotfiles
ln -sf ~/dotfiles/vimrc_local ~/.vimrc.local
