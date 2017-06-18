# install git, tmux, make, gcc
sudo zypper install -y  git-core tmux zsh vim vim-data wget tar make gcc gcc-c++ ruby zlib-devel libopenssl-devel ncurses-utils glibc-locale youtube-dl readline-devel libbz2-devel libsqlite3-0 sqlite3-devel

# copy dot files
cp -r .bashrc .gitignore .matplotlib .tmux.conf .vimrc .zshrc ~/

./install_tools.sh
