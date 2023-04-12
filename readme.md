# Dotfiles for pretty much everything!
Based on pop-OS with regolith installed

"install" using `stow` i.e. `stow neovim` to install the neovim dotfiles to the default directory.

Requires:
- tree (apt)
- fd (symlink fdfind from apt with `ln -s $(which fdfind) ~/.local/bin/fd`
- fzf
- vcsi for video sheets in ranger (`pip install vcsi`)
