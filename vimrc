call pathogen#infect()
syntax on
filetype on
filetype plugin indent on
	"line numbers
set nu
	"tabstop
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
	"default colorscheme
"colorscheme zenburn
colorscheme codeschool
"colorscheme solarized
"colorscheme github
"colorscheme textmate16
  "nerdtree settings
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
silent! nmap <C-b> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
"let g:NERDTreeMapActivateNode="<F3>"
"let g:NERDTreeMapPreview="<F4>"
  "folding
set foldmethod=indent
set foldlevel=99
  "window mapping
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
	"ack
nmap <leader>a <Esc>:Ack<space>
	"ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
	"search
set hlsearch
set incsearch
	"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp
	"vim-rubytest config	
let g:rubytest_cmd_test = "bundle exec ruby %p"
let g:rubytest_cmd_testcase = "bundle exec ruby %p -n '/%c/'"
let g:rubytest_cmd_spec = "bundle exec spec -f specdoc %p"
let g:rubytest_cmd_example = "bundle exec spec -f specdoc %p -e '%c'"
let g:rubytest_cmd_feature = "bundle exec cucumber %p"
let g:rubytest_cmd_story = "bundle exec cucumber %p -n '%c'"
	"vim-rubytest config	with spork
let g:rubytest_cmd_test = "testdrb %p"
let g:rubytest_cmd_testcase = "testdrb %p -n '/%c/'"
	"vim ctags shortcuts for split and vsplit
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
	"vim regenerate ctags for current project and all gems in current gemset
map <Leader>r :!ctags --extra=+f --exclude=.git --exclude=log -R *<CR><CR>
map <Leader>rts :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/sc-*<CR><CR>
map <Leader>rt :!ctags --extra=+f --exclude=.git --exclude=log -R * `rvm gemdir`/gems/*<CR><CR>
	"auto save on lose focus
autocmd BufLeave,FocusLost * silent! wall
	"vim sessions
let g:session_autosave=1
let g:session_autoload=1
