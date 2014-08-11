dotvim
======

My personal vim configuration.

Directions:

First, clone this repo:

> git clone git@github.com:mgrecar/dotvim.git ~/.vim

Then, clone in Vundle:

> git clone git@github.com:gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Next, ceate a symbolic link to the repo version of vimrc:

> ln -s ~/.vim/vimrc ~/.vimrc

Finally, install the plugins.

> vim +PluginInstall +qall

If you have any weird errors indicating it can't find Vundle:
1. Check that you're consistently referencing Vundle.vim as the directory, and not vundle.vim.
2. Make sure you've successfully cloned Vundle.vim to the right location. 
