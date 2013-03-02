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
set background=dark
" colorscheme zenburn
" colorscheme codeschool
" colorscheme github
" colorscheme textmate16
" colorscheme railscasts
colorscheme lucius
" solarized-dark settings
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
" colorscheme blackboard
  "nerdtree settings
if &diff
else
	autocmd vimenter * NERDTree
	autocmd VimEnter * wincmd p
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
endif
silent! nmap <C-b> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
"disable arrows in terminal vim
if has('gui_running')
else
let g:NERDTreeDirArrows=0
end
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
map <c-m> :CtrlPBufTag<CR>
map <c-n> :CtrlPTag<CR>
map <c-e> :CtrlPMRUFiles<CR>
	"search
set hlsearch
set incsearch
	"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp
  "vim-ruby autocomplete options
if has("autocmd")
  autocmd FileType ruby set omnifunc=rubycomplete#Complete
  autocmd FileType ruby let g:rubycomplete_buffer_loading=1
  autocmd FileType ruby let g:rubycomplete_classes_in_global=1
endif
	"vim-rubytest config	
let g:rubytest_cmd_test = "bundle exec ruby %p"
let g:rubytest_cmd_testcase = "bundle exec ruby %p -n '/%c/'"
let g:rubytest_cmd_spec = "bundle exec rspec -f specdoc %p"
let g:rubytest_cmd_example = "bundle exec rspec -f specdoc %p -e '%c'"
let g:rubytest_cmd_feature = "bundle exec cucumber %p"
let g:rubytest_cmd_story = "bundle exec cucumber %p -n '%c'"
	"vim-rubytest config	with spork
" let g:rubytest_cmd_test = "testdrb %p"
" let g:rubytest_cmd_testcase = "testdrb %p -n '/%c/'"
  "vim-rubytest key bindings
map <Leader>t <Plug>RubyTestRun
map <Leader>T <Plug>RubyFileRun
map <Leader>l <Plug>RubyTestRunLast
	"vim ctags shortcuts for split and vsplit
"C-W C-] open in horizontal split
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" fix vertical split map <C-V C-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
	"vim regenerate ctags for current project and all gems in current gemset
map <Leader>tt :!bundle show --paths <bar> xargs ctags -R && ctags -R -a *<CR><CR>
map <Leader>ta :!ctags -R -a *<CR><CR>
	"auto save on lose focus
autocmd BufLeave,FocusLost * silent! wall
	"vim sessions
let g:session_autosave=1
let g:session_autoload=1
  "tagbar toggle
" nmap <F8> :TagbarToggle<CR>
  "resize windows
map + <C-W>+
map - <C-W>-
  "switch plugin to switch code constructs like if vs unless, or vs and etc
nnoremap - :Switch<cr>
  "sideways plugin to switch argument order
nnoremap <c-h> :SidewaysLeft<cr>
nnoremap <c-l> :SidewaysRight<cr>
  "xml formatting
map <F5> :%s/<\([^>]\)*>/\r&\r/g<enter>:g/^$/d<enter>vat=
  "vimux and vimux-ruby-test keymap
map <Leader>s :RunRubyFocusedTest<CR>
map <Leader>S :RunAllRubyTests<CR>
map <Leader>c :RunFocusedCuke<CR>
map <Leader>C :RunAllCukes<CR>
  "vimrc tips from stackoverflow and r/vim
  "make y behave like other capitals
nnoremap Y y$
  "Treat underscore as word boundary NOTWORKING
" set iskeyword-=_ 
  "Use Cmd-1, Cmd-2, Cmd-3 to switch tabs
map <D-1> 1gt 
map <D-2> 2gt 
map <D-3> 3gt 
map <D-4> 4gt 
map <D-5> 5gt 
map <D-6> 6gt 
map <D-7> 7gt 
map <D-8> 8gt 
map <D-9> 9gt 
  "shell command to load aliased
set shell=/bin/bash\ --rcfile\ ~/.bash_profile
  "EasyMotion leader mapping
" let g:EasyMotion_leader_key = '<Leader>'
  "Fold all comments
  "zM to fold/toggle comments
"autocmd FileType ruby,eruby
"      \ set foldmethod=expr |
"      \ set foldexpr=getline(v:lnum)=~'^\\s*#'
  "Move line up or down in normal, insert and visual mode
  nnoremap <D-j> :m .+1<CR>==
  nnoremap <D-k> :m .-2<CR>==

  inoremap <D-j> <Esc>:m .+1<CR>==gi
  inoremap <D-k> <Esc>:m .-2<CR>==gi

  vnoremap <D-j> :m '>+1<CR>gv=gv
  vnoremap <D-k> :m '<-2<CR>gv=gv

  "automatically leave insert mode after few seconds of inactivity (15s)
au CursorHoldI * stopinsert
au InsertEnter * let updaterestore=&updatetime | set updatetime=30000
au InsertLeave * let &updatetime=updaterestore
 
