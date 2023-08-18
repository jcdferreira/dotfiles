#!/bin/bash

apt-get install -y wget zsh tree

chsh -s $(which zsh)

# oh-my-zsh & plugins
# wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
yes | sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'

# sudo sh -c "$(wget -O- https://raw.githubusercontent.com/deluan/zsh-in-docker/master/zsh-in-docker.sh)" -- \
#     -t agnoster

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

# remove existing zshrc
rm -f ~/.zshrc
# use ours zshrc
cp ./.zshrc ~

cp ./.p10k.zsh ~