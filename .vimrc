execute pathogen#infect() 
syntax on
filetype plugin indent on

set encoding=utf-8
set fileencoding=utf-8

set number

set colorscheme default

"-------------------------
"  VIM MULTIPLE CURSORS  -
"-------------------------
let g:multi_cursor_use_default_mapping=0
"Default mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

"--AIRLINE
set laststatus=2
let g:airline_powerline_fonts = 1
set ttimeoutlen=50
set noshowmode
let g:airline#extensions#tabline#enabled = 1

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" unite
" like ctrl p
nnoremap <C-p> :Unite file_rec/async<cr>
"like ack
nnoremap <space>/ :Unite grep:.<cr> 
"yankhistory
let g:unite_source_history_yank_enable = 1
nnoremap <space>y :Unite history/yank<cr> 
"buffer switching like lustyjuggler
nnoremap <space>s :Unite -quick-match buffer<cr> 
 
" Vim filer
let g:vimfiler_as_default_explorer = 1
map <F2> :VimFilerExplorer<CR>
autocmd StdinReadPre * let s:std_in=1
