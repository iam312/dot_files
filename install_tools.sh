# install antigen
git clone -b master https://github.com/zsh-users/antigen.git ~/opt/antigen

# install tpm
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# install pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv

# install pyenv-update
git clone git://github.com/yyuu/pyenv-update.git ~/.pyenv/plugins/pyenv-update

# install pyenv-virtualenv
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

# install chruby
cd ~/opt
wget -O chruby-0.3.9.tar.gz https://github.com/postmodern/chruby/archive/v0.3.9.tar.gz
tar -xzf chruby-0.3.9.tar.gz
/bin/rm chruby-0.3.9.tar.gz
cd chruby-0.3.9/
sudo make install

# install ruby-install
cd ~/opt
wget -O ruby-install-0.6.1.tar.gz https://github.com/postmodern/ruby-install/archive/v0.6.1.tar.gz
tar -xzf ruby-install-0.6.1.tar.gz
/bin/rm ruby-install-0.6.1.tar.gz
cd ruby-install-0.6.1/
sudo make install
