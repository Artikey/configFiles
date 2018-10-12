set nocompatible              " required
filetype off                  " required
syn on
set encoding=utf8
let python_highlight_all=1
set nu

" enable folding
set foldmethod=indent
set foldlevel=99
" enable folding with the space bar
nnoremap <space> za
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...
" you complete me
Bundle 'Valloric/YouCompleteMe'
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :TcmCompleter GoToDefinitionElseDeclaration<CR>

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" python with virtualenv support
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set tabstop=4 softtabstop=4 shiftwidth=4 textwidth=79 expandtab autoindent fileformat=unix

" enable powerline in one window
set laststatus=2
" execute some python files
imap <F5> <Esc>:w<CR>:!clear;python %<CR>
