
install:
	mkdir bundle
	git clone https://github.com/VundleVim/Vundle.vim.git ./bundle/Vundle.vim
	nvim +VundleInstall +qa
