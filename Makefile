.PHONY: install
install:
	ln -snf "$(HOME)/.vim/vimrc" "$(HOME)/.vimrc"

.PHONY: update
update:
	git submodule update --init --recursive
	git submodule foreach git pull --recursive-submodules origin master

