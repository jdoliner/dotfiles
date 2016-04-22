all:
	ln vim/.vimrc ~/.vimrc
	ln zsh/.zshrc ~/.zshrc
	ln git/.gitconfig ~/.gitconfig
	ln tmux/.tmux.conf ~/.tmux.conf
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

nvim:
	mkdir -p ~/.config}
	ln -s ~/.vim ~/.config/nvim
	ln -s ~/.vimrc ~/.config/nvim/init.vim
