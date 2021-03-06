call plug#begin('~/.local/share/nvim/plugged')
Plug 'NLKNguyen/papercolor-theme'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'prettier/vim-prettier'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'neovimhaskell/haskell-vim'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
Plug 'ludovicchabant/vim-gutentags'
Plug 'vim-airline/vim-airline'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'ryanolsonx/vim-lsp-typescript'
Plug 'lifepillar/pgsql.vim'
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

" default .sql files to pgsql syntax
let g:sql_type_default = 'pgsql'


" open nerdtree
map <C-d> :NERDTreeToggle<CR>

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi']
let g:syntastic_python_checkers = ['flake8']

" rust.vim settings
autocmd BufWritePre *.rs RustFmt

" vim-go config
let g:go_template_autocreate = 0

" vim-prettier config
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html Prettier
let g:prettier#config#config_precedence = 'file-override'
let g:prettier#config#single_quote = 'false'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#jsx_bracket_same_line = 'false'
let g:prettier#config#arrow_parens = 'avoid'
let g:prettier#config#trailing_comma = 'none'
let g:prettier#config#parser = 'babylon'

" typescript jsx settings
autocmd BufNewFile,BufRead *.tsx set filetype=typescript.tsx

