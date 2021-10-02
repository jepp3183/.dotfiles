#bashrc
echo "source /home/jeppe/.dotfiles/.bashrc_own" >> /home/jeppe/.bashrc
ln -s /home/jeppe/.dotfiles/.bashrc_own ~/.bashrc_own

#init.vim
mkdir /home/jeppe/.config/nvim
ln -s /home/jeppe/.dotfiles/init.vim ~/.config/nvim/init.vim

#ranger
rm -r /home/jeppe/.config/ranger
ln -s /home/jeppe/.dotfiles/ranger ~/.config/ranger
