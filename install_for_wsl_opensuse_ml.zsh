#####################################
# To use this script, your login shell must be zsh.
# Use below command, to set your login shell to zsh.
#
# chsh -s /usr/bin/zsh
#####################################

# install git, tmux, make, gcc
sudo zypper install -y  git-core tmux zsh vim vim-data wget curl curl-zsh-completion tar make gcc gcc-c++ ruby zlib-devel libopenssl-devel ncurses-utils glibc-locale youtube-dl readline-devel libbz2-devel libsqlite3-0 sqlite3-devel

./install_tools_for_ml.zsh

# copy dot files
cp -r .bashrc .gitignore .matplotlib .tmux.conf .vimrc ~/
cat .zshrc_for_ml >> ~/.zshrc
