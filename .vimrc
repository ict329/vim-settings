le" pathogen
let g:pathogen_disabled = [ 'pathogen' ]    " don't load self 
call pathogen#infect()                      " load everyhting else
call pathogen#helptags()                    " load plugin help files
 
" System setting
set number
set hlsearch
set incsearch
set showcmd
set ruler

"Select and copy, paste"
map <C-c> y  
map <C-X> d  
map <C-A> <Esc>ggVG 

nmap = zc
nmap + zo

nmap s :w<cr>

"tags
set tags=tags;/
set autochdir
nmap t :Tlist<cr>




" code folding
set foldmethod=indent
set foldlevel=2
set foldnestmax=4
set foldlevel=99
 
" indentation
set autoindent
set softtabstop=4 shiftwidth=4 expandtab
 
" visual
highlight Normal ctermbg=black
set background=dark
set cursorline
set t_Co=256
 
" syntax highlighting
syntax on
filetype on                 " enables filetype detection
filetype plugin indent on   " enables filetype specific plugins
 
" colorpack
"colorscheme vibrantink
"colorscheme desert
"colorscheme evening
" gundo
nnoremap <F5> :GundoToggle<CR>
 
" lusty
set hidden
 
" pep8
let g:pep8_map='<leader>8'
 
" supertab
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

"winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>
nmap f :WMToggle<cr>

"pyfakes
filetype plugin indent on


""""""""""""""""""""""""""""""  
" miniBufexplorer Config  
""""""""""""""""""""""""""""""  
let g:miniBufExplMapWindowNavArrows = 1  
let g:miniBufExplMapWindowNavVim = 1  
let g:miniBufExplMapCTabSwitchWindows = 1  
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
  
"解决FileExplorer窗口变小问题  
let g:miniBufExplForceSyntaxEnable = 1  
let g:miniBufExplorerMoreThanOne=2  "

nmap bn :bn<cr>
nmap bN :bN<cr>
nmap bw :bw<cr>


"Objective-C 
let filetype_m='objc' 


"common
source $HOME/.vim/autoload/common.vim

"java
source $HOME/.vim/autoload/java.vim

"python
source $HOME/.vim/autoload/python.vim

