apt-get clean && \
    apt-get update && apt-get -y install tmux vim build-essential
# setup tmux like terminator
cp ~/myEnv/ubuntu/settings/tmux.conf ~/.tmux.conf
cp ~/myEnv/ubuntu/settings/vimrc ~/.vimrc
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

# [TODO] Integrate grip with vim
# https://github.com/JamshedVesuna/vim-markdown-preview
# prepare for install xdotool
apt-get install -y libx11-dev libxinerama-dev libxkbcommon-x11-dev

# install vim plugin
vim -c 'PluginInstall' -c 'qa!'


#cd /tmp
#git clone https://github.com/jordansissel/xdotool.git
#cd xdotool
#make install