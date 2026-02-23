all:
	ln vim/.vimrc ~/.vimrc
	ln zsh/.zshrc ~/.zshrc
	ln git/.gitconfig ~/.gitconfig
	ln tmux/.tmux.conf ~/.tmux.conf
	ln urxvt/.Xresources ~/.Xresources
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	ln nvim ~/.config/nvim
	ln starship/starship.toml ~/.config/starship.toml
	ln alacritty ~/.config/alacritty

nvim:
	mkdir -p ~/.config
	ln -s ~/.vim ~/.config/nvim
	ln -s ~/.vimrc ~/.config/nvim/init.vim
