#!/bin/bash

apt-get install -y wget zsh tree

chsh -s $(which zsh)

# oh-my-zsh & plugins
yes | sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
zsh -c 'git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions'
zsh -c 'git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting'

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

# remove existing zshrc
rm -f ~/.zshrc
# use our zshrc
cp ./.zshrc ~

cp ./.p10k.zsh ~
