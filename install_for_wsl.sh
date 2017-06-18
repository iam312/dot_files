sudo apt-get update
sudo apt-get install -y make build-essential libssl-dev zlib1g zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev
sudo apt-get install -y zsh tmux youtube-dl

# copy dot files
cp -r .gitignore .matplotlib .tmux.conf .vimrc .zshrc ~/
# setup bashrc for zsh
#mv ~/.bashrc ~/.bashrc.orig
cp .bashrc_for_zsh_on_wsl ~/.bashrc

./install_tools.sh
