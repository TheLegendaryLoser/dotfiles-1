""" plugins
call plug#begin()

Plug 'kconner/vim-syntax-gemtext'
Plug 'mbbill/undotree'
Plug 'KaraMCC/vim-gemini'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go'
Plug 'tyru/caw.vim'
Plug 'junegunn/vim-easy-align'
"Plug 'pucka906/vdrpc'
Plug 'arcticicestudio/nord-vim'
Plug 'lambdalisue/vim-manpager'
Plug 'KaraMCC/vim-streamline'
Plug 'ervandew/supertab'
Plug 'preservim/tagbar'
Plug 'ryanoasis/vim-devicons'
Plug 'chrisbra/Colorizer'
Plug 'bagrat/vim-buffet'

call plug#end()

""" sets
set nocompatible
set nu
set rnu
set nowrap
set encoding=UTF-8
set laststatus=2
set noshowmode
set showcmd
set tabstop=4
set shiftwidth=4
set expandtab
set title
set ttyfast

autocmd FileType c setlocal tabstop=2 shiftwidth=2

""" highlight lines
" highlight with \l
nnoremap <silent> <Leader>l :exe "let m = matchadd('WildMenu','\\%" . line('.') . "l')"<CR>
" clear highlights with \enter
nnoremap <silent> <Leader><CR> :call clearmatches()<CR>

""" easy align
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
					
""" buffet
let g:buffet_always_show_tabline = 0
noremap gt :bn<CR>
noremap gT :bp<CR>
noremap <Leader><Tab> :Bw<CR>
noremap <Leader><S-Tab> :Bw!<CR>
noremap <C-t> :tabnew split<CR>

""" tagbar
nmap # :TagbarToggle<CR>

""" cursor
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"
autocmd VimLeave * silent !echo -ne "\e[4 q"
autocmd VimEnter * silent !echo -ne "\e[2 q"

""" colours
colorscheme nord
hi Normal guibg=NONE ctermbg=NONE

""" underline current linenumber
" Enable cursor line position tracking:
set cursorline
" Remove the underline from enabling cursorline
highlight clear CursorLine

""" vim discord rpc cause why not
let g:vdrpc_autostart = 1
let g:vdrpc_filesize = 1

""" undo history
nnoremap ] :UndotreeToggle<CR>

""" speed up
set noswapfile
set lazyredraw
