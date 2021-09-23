#bashrc
echo "source ~/.dotfiles/.bashrc_own" >> ~/.bashrc
ln -s ~/.dotfiles/.bashrc_own ~/bashrc_own

#init.vim
mkdir ~/.config/nvim
ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim

#ranger
rm -r /home/jeppe/.config/ranger
ln -s ~/.dotfiles/ranger ~/.config/ranger
