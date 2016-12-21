set nocompatible              " be iMproved, required
filetype off                  " required

" Add pathogen to path
set rtp+=~/.vim/bundle/vim-pathogen
execute pathogen#infect()
Helptags

" Use system clipboard
set clipboard=unnamedplus

filetype plugin indent on
syntax on
colorscheme monokai
set background=dark

" Indent
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_exclude_filetypes = ['nerdtree' , 'startify']
set ts=2 sw=2 et
hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey


let g:airline_theme='powerlineish'

set number
" Set powerline font
let g:airline_powerline_fonts = 1

" Use Ctrl+T for NERDTree
map <silent> <C-t> :NERDTreeToggle<CR>

" Close NERDTree when it's the last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_rust_checkers = ['rustc']
" YouCompleteMe params
let rust_root = systemlist('rustc --print sysroot')[0]
let g:ycm_rust_src_path = rust_root . '/lib/rustlib/src/rust/src'
" Vim Hard Time ;(
let g:hardtime_default_on = 1
