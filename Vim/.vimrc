set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My bundles here:
"
" original repos on GitHub
"Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/vim-easymotion'
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
"Plugin 'tpope/vim-rails.git'
" vim-scripts repos
"Plugin 'L9'
"Plugin 'FuzzyFinder'
" non-GitHub repos
"Plugin 'git://git.wincent.com/command-t.git'
" Git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///Users/gmarik/path/to/plugin'
" ...

"Plugin 'airblade/vim-gitgutter'
if executable('git')
	Plugin 'tpope/vim-fugitive'
endif
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'nvie/vim-flake8'
Plugin 'nelstrom/vim-markdown-folding'
if executable('ctags')
    Plugin 'majutsushi/tagbar'
endif
Plugin 'tpope/vim-markdown'
call vundle#end()

set nocompatible
let g:SimpylFold_docstring_preview = 1

if has("autocmd")
      filetype plugin indent on
      if filereadable("~/.vim/c.vim")
      	autocmd BufEnter *.c,*.h,*.cpp,*.hpp,*.cc source ~/.vim/c.vim
      endif
      if filereadable("~/.vim/python.vim")
      	autocmd BufEnter *.py source ~/.vim/python.vim
      endif
endif


let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = {
    \ 'types': {
        \ 1: ['.git', 'cd %s && git ls-files'],
        \ 2: ['.hg', 'hg --cwd %s locate -I .']
        \ },
    \ 'fallback': 'find %s -type f'
    \ }
" Check format on open
let g:systatic_chec_on_open = 1
set pastetoggle=<F12>
nmap <F7> :Errors<CR>
nmap <F6> :set spell!<CR>
nmap <F5> :set hlsearch!<CR>
filetype plugin indent on
" Stuff
if isdirectory(expand("~/.vim/bundle/tagbar/"))
	"if toogle bar is loaded map f8 to toggle
	nmap <F8> :TagbarToggle<CR>
endif
" Set terminal background to black
hi normal ctermfg=white ctermbg=black
"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install (update) bundles
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
