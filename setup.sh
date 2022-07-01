#zshrc
ln -s /home/jeppe/.dotfiles/.zshrc ~/.zshrc

#init.vim
mkdir /home/jeppe/.config/nvim
ln -s /home/jeppe/.dotfiles/init.vim ~/.config/nvim/init.vim

#ranger
rm -r /home/jeppe/.config/ranger
ln -s /home/jeppe/.dotfiles/ranger ~/.config/ranger
