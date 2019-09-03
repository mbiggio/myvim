set nocompatible
set number
set bs=2
set shiftwidth=2
set laststatus=2
set filetype=off
syn on

set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf.vim'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-eunuch'
Plugin 'ycm-core/YouCompleteMe'
call vundle#end()
filetype plugin indent on

"TCM settings
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1

"NERDTree Settings
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ***** tabs settings *****
"press Ctrl-Left or Ctrl-Right to go to the previous or next tabs, 
"and can press Alt-Left or Alt-Right to move the current tab to the left or right.
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>

"press F8 to show all buffers in tabs, or to close all tabs 
"(toggle: it alternately executes  :tab ball and :tabo).
let notabs = 0
nnoremap <silent> <F8> :let notabs=!notabs<Bar>:if notabs<Bar>:tabo<Bar>:else<Bar>:tab ball<Bar>:tabn<Bar>:endif<CR>

"Set-up clang for c++ autocomplete
let g:clang_library_path='/usr/lib/llvm-6.0/lib/'
let g:clang_complete_auto = 1
let g:clang_complete_copen = 1

"My mappings
let mapleader = "-"
nnoremap <C-U> viwU<ESC>
nnoremap <C-L> viwu<ESC>
nnoremap <leader>ev :vsplit ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
nnoremap ; :Files<CR>
