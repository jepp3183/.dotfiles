#bashrc
echo "source ~/.dotfiles/.bashrc_own" >> ~/.bashrc
ln -s ~/.dotfiles/.bashrc_own ~/bashrc_own

#init.vim
mkdir ~/.config/nvim
ls -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim
