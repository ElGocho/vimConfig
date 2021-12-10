let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'

if empty(glob(data_dir . '/autoload/plug.vim'))
	silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" syntax

Plug 'sheerun/vim-polyglot'


" Status Bar

Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Themes 

Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'

" Tree

Plug 'scrooloose/nerdtree'

" Typing

Plug 'jiangmiao/auto-piars'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Tmux

Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'

" Autocomplete

Plug 'sirver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch':'release'}

" Test

Plug 'tyewang/vimux-jest-test'
Plug 'janko-m/vim-test'

" IDE

Plug 'editorconfig/editorconfig-vim' 
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'easymotion/vim-easymotion'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'


" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'


call plug#end()
