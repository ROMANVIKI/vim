call plug#begin('~/.vim/plugged')

" CSS, React, and Tailwind Plugins
Plug 'mattn/emmet-vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'arcticicestudio/nord-vim'
Plug 'airblade/vim-tailwind'
Plug 'mlaursen/vim-react-snippets'

" Essential Plugins
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-gitgutter'
Plug 'preservim/nerdtree'

" Snippet Support
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" JavaScript, React, TypeScript
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'MaxMEllon/vim-jsx-pretty'

" Python and Django
Plug 'davidhalter/jedi-vim'
Plug 'psf/black'

" Intellisense engine (Coc.nvim)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Emmet for JSX/HTML autocomplete
Plug 'neoclide/coc-emmet', {'do': 'yarn install --frozen-lockfile'}

" Color Themes and Aesthetic
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'

" Additional Plugins
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'hrsh7th/nvim-cmp'

call plug#end()

" General settings
set number
set relativenumber
set tabstop=2
set background=dark
colorscheme gruvbox

" Coc.nvim settings and autocompletion
let g:coc_global_extensions = [
    \ 'coc-python',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-json',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-tsserver',
    \ 'coc-tailwindcss',
    \ 'coc-emmet'  
    \ ]

" Inoremap for Coc.nvim autocompletion
inoremap <expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Auto-pairs and auto-closing tags configuration
let g:AutoPairsFlyMode = 0
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.js,*.jsx'

" Fuzzy finder configuration
let g:fzf_action = {
    \ 'enter': 'tabedit',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit'
    \ }

" Filetype-specific settings
autocmd BufNewFile,BufRead *.jsx,*.tsx set filetype=javascriptreact
autocmd BufNewFile,BufRead *.html set filetype=htmldjango
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.json,*.css,*.scss :CocCommand prettier.formatFile

" Enable JSX and Emmet for HTML snippets inside React components
let g:user_emmet_mode = 'n'  " Use Emmet only in normal mode
let g:user_emmet_install_global = 0  " Avoid automatic installation globally
autocmd FileType html,css,javascriptreact EmmetInstall


" Map Ctrl + P to open the fuzzy finder
nnoremap <C-p> :Files<CR>


