#!/usr/bin/zsh

################################################
## To use this shell script, your login shell must be zsh.
################################################

# install oh-my-zsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)" "" --unattended
# install antigen
git clone -b master https://github.com/zsh-users/antigen.git ~/opt/antigen

# install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install miniconda
wget -O Miniconda3-latest-Linux-x86_64.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
rm -rf ~/opt/miniconda3
bash Miniconda3-latest-Linux-x86_64.sh -b -p ~/opt/miniconda3
~/opt/miniconda3/bin/conda init zsh
source ~/.zshrc
conda update -n base -c defaults conda -y
rm Miniconda3-latest-Linux-x86_64.sh 

