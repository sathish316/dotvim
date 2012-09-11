call pathogen#infect()
syntax on
filetype on
filetype plugin indent on
	"line numbers
set nu
	"tabstop
set tabstop=2
	"default colorscheme
colorscheme zenburn
  "nerdtree settings
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  "folding
set foldmethod=indent
set foldlevel=99
  "window mapping
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
	"ack
nmap <leader>a <Esc>:Ack!
	"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
	"search
set hlsearch
set incsearch
	
