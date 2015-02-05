set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'Lokaltog/vim-easymotion'
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Bundle 'skalnik/vim-vroom'
Plugin 'henrik/vim-ruby-runner'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'ervandew/supertab'

Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'lilydjwg/colorizer'
Plugin 'msanders/snipmate.vim'
" This is cool but not needed  = Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Bundle 'Kaceyr/vim-colors-solarized'
Bundle 'jpo/vim-railscasts-theme'
Plugin 'chrisbra/csv.vim'
Bundle 'mileszs/ack.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
set number
set tabstop=2
set shiftwidth=2
set expandtab
let g:SuperTabMappingForward = '<nul>'
let g:SuperTabMappingBackward = '<s-nul>'
nmap <leader>n :NERDTreeToggle<CR>
nmap <D-F> :Ack<space>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore = ['tmp', '\.class$', '\~']
let base16colorspace=256
:set laststatus=2

" $HOME/.vimrc
:set directory=$HOME/.vim/swapfiles//

if has("gui_macvim")
  macmenu &File.New\ Tab key=<D-S-t>
endif
colorscheme railscasts

if has("gui_running")
  set background=dark
  colorscheme railscasts
  "set guifont=Monaco:h14
  set guifont=Monaco\ for\ Powerline:h14
  let g:NERDTreeWinPos = "left"
  set guioptions-=T " Removes top toolbar
  set guioptions-=r " Removes right hand scroll bar
  set go-=L " Removes left hand scroll bar
  autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly
  :set cpoptions+=$ " puts a $ marker for the end of words/lines in cw/c$ commands
  let g:SuperTabMappingForward = '<c-space>'
  let g:SuperTabMappingBackward = '<s-c-space>'
else
  syntax on
  set background=dark
  let g:NERDTreeWinPos = "right"
  autocmd User Rails let b:surround_{char2nr('-')} = "<% \r %>" " displays <% %> correctly  
endif
let g:airline_powerline_fonts=1

