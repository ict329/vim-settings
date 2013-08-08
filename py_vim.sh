#!/bin/bash
#Your Command Below!!!

#Install ctags,pyflakes 
HOME="~"

cd $HOME

echo 'create new dir autoload, bundle'

mkdir -p .vim/{autoload,bundle}

echo 'load plugin from git hub'

cd .vim
git init

git submodule add https://github.com/andrewle/vim-autoclose.git bundle/vim-autoclose
git submodule add https://github.com/vim-scripts/Color-Sampler-Pack.git bundle/color-sampler-pack
git submodule add https://github.com/sjl/gundo.vim.git bundle/gundo
git submodule add https://github.com/sjbach/lusty.git bundle/lusty
git submodule add https://github.com/cburroughs/pep8.git bundle/pep8
git submodule add https://github.com/vim-scripts/pydoc.vim.git bundle/pydoc
git submodule add https://github.com/tpope/vim-pathogen.git bundle/pathogen
git submodule add https://github.com/vim-scripts/ScrollColors.git bundle/scrollColors
git submodule add https://github.com/ervandew/supertab.git bundle/supertab
git submodule add https://github.com/jmcantrell/vim-virtualenv.git bundle/vim-virtualenv
git submodule add https://github.com/vim-scripts/winmanager--Fox.git bundle/winmanager
git submodule add https://github.com/mitechie/pyflakes-pathogen.git bundle/pyflaks-pathogen
git submodule add https://github.com/vim-scripts/taglist.vim.git bundle/taglist
git submodule add https://github.com/vim-scripts/minibufexpl.vim.git bundle/minibufexpl

git submodule init
git submodule update
git submodule foreach git submodule init
git submodule foreach git submodule update

echo 'add link'

ln -s '../bundle/pathogen/autoload/pathogen.vim' autoload/pathogen.vim
git add autoload

echo 'skip to vimrc. you should set it by your self.'

#ln -s './.vim/.vimrc' $HOME/.vimrc

echo 'commit you git rep'

git commit -m "Initial commit."



echo 'The shell is from http://rawpackets.com/2011/10/16/configuring-vim-as-a-python-ide/'
