#Install
##.bashrc_own
symlink .bashrc_own in here to ~/.bashrc_own:
ln -s ~/.dotfiles/.bashrc_own ~/.bashrc_own

source .bashrc_own in regular .bashrc:
echo "source ~/.bashrc_own" >> .bashrc

##init.vim (neovim)
Symlink init.vim to ~/.config/nvim/init.vim
ln -s ~/.dotfiles/init.vim ~/.config/nvim/init.vim
