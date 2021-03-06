set nocompatible
set number
set bs=2

"tabs to spaces
set expandtab
set tabstop=4
set shiftwidth=4

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
Plugin 'airblade/vim-gitgutter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'SjB/devhelp.vim'
Plugin 'joe-skb7/cscope-maps'
call vundle#end()
filetype plugin indent on

let mapleader = "-"

"YCM settings
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_rust_src_path = $RUST_SRC_PATH
let g:ycm_confirm_extra_conf = 0
"debug logs for ycm -> check logs location with :YcmDebugInfo<CR>
"let g:ycm_log_level = 'debug'
nnoremap <leader>g :YcmCompleter GoTo<CR>

""recreate tag file
noremap <leader>t :!ctags -R .<CR><CR>

"devhelp settings
let g:devhelpSearchKey = '<C-G>'

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

"My mappings
"quickly move
""Switch window with C-`direction`
noremap <C-H> <C-W>h
noremap <C-J> <C-W>j
noremap <C-K> <C-W>k
noremap <C-L> <C-W>l
""Fast move with S-`direction`
noremap <S-H> ^
noremap <S-J> <C-F>
noremap <S-K> <C-B>
noremap <S-L> $
""Switch tab with C-`direction`
noremap th gT
noremap tl gt
""quickly open and reload .vimrc
nnoremap <leader>ev :vsplit ~/.vimrc<CR>
nnoremap <leader>sv :source ~/.vimrc<CR>
""quickly quit and save
nnoremap <leader>q :quit<CR>
nnoremap <leader>w :write<CR>
""quick access to FZF
nnoremap ; :Files<CR>
nnoremap , :Tags<CR>
""unmap arrows
noremap <Left> <NOP>
noremap <Right> <NOP>
noremap <Up> <NOP>
noremap <Down> <NOP>

"Insert mode directions
inoremap <C-k> <Up>
inoremap <C-j> <Down>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <Up>    <Nop>
inoremap <Down>  <Nop>
inoremap <Left>  <Nop>
inoremap <Right> <Nop>
