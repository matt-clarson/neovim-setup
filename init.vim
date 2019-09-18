call plug#begin('~/.local/share/nvim/plugged')
Plug 'NLKNguyen/papercolor-theme'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()

filetype plugin on
syntax on

set t_Co=256

set background=dark
colorscheme PaperColor

" tabbing
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

" improve ui
set number
set showcmd
set cursorline
set wildmenu
set lazyredraw
set showmatch

" searches
set incsearch
set hlsearch


" open nerdtree
map <C-d> :NERDTreeToggle<CR>

" vim-go config
let g:go_template_autocreate = 0

" vim-prettier config
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#parser = 'babylon'


