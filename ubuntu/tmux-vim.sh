apt-get clean && \
    apt-get update && apt-get -y install tmux vim build-essential xclip xsel
# setup tmux like terminator
#ln ~/myEnv/ubuntu/settings/tmux.conf ~/.tmux.conf
#ln ~/myEnv/ubuntu/settings/vimrc ~/.vimrc
##cp ~/myEnv/ubuntu/settings/global_extra_conf.py ~/.global_extra_conf.py

cat tmux_bash_history_fix.sh >> ~/.bashrc

# setup vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# vim markdown editor
cd /tmp
git clone https://github.com/JamshedVesuna/vim-markdown-preview.git
mv vim-markdown-preview ~/.vim/bundle/

# github markdown style 
apt-get install -y python-pip
pip install grip
apt-get install -y grip

apt-get install -y libx11-dev libxinerama-dev libxkbcommon-x11-dev
rm -rf /var/lib/apt/list/*

# install
apt install -y build-essential cmake python3-dev
git clone https://github.com/Valloric/YouCompleteMe ~/.vim/bundle/YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
 ./install.py --clang-completer

# install vim plugin
vim -c 'PluginInstall' -c 'qa!'

# [TODO] Integrate grip with vim
# https://github.com/JamshedVesuna/vim-markdown-preview
# prepare for install xdotool

#cd /tmp
#git clone https://github.com/jordansissel/xdotool.git
#cd xdotool
#make install
