sudo apt-get update
sudo apt-get install -y make build-essential libssl-dev zlib1g zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev
sudo apt-get install -y zsh tmux yt-dlp

# setup homebrew
sudo apt-get install -y procps file git
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

./install_tools_for_ml.zsh

# copy dot files
cp -r .gitignore .matplotlib .tmux.conf .vimrc .zshrc ~/
cat .zshrc_for_ml >> ~/.zshrc
