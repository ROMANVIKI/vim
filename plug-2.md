call plug#begin('~/.vim/plugged')

" CSS, React, and Tailwind Plugins
Plug 'mattn/emmet-vim'                             " Emmet for HTML/JSX
Plug 'hail2u/vim-css3-syntax'                      " CSS3 syntax highlighting
Plug 'airblade/vim-tailwind'                       " Tailwind CSS support
Plug 'styled-components/vim-styled-components', { 'branch': 'main' } " Styled components syntax
Plug 'mlaursen/vim-react-snippets'                 " React snippets

" Essential Plugins
Plug 'tpope/vim-surround'                          " Surround text with quotes, brackets, etc.
Plug 'airblade/vim-gitgutter'                      " Show git diff in the gutter
Plug 'preservim/nerdtree'                          " File tree explorer
Plug 'tpope/vim-commentary'                        " Easy commenting
Plug 'tpope/vim-fugitive'                          " Git wrapper
Plug 'jiangmiao/auto-pairs'  " Automatically pair brackets and quotes
Plug 'tpope/vim-surround'
Plug 'SirVer/ultisnips'
Plug 'itchyny/lightline.vim'
Plug 'akinsho/nvim-toggleterm.lua'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ekalinin/Dockerfile.vim'


" Essential Plugins
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Core fzf plugin
Plug 'junegunn/fzf.vim'                            " Fzf.vim plugin for Vim


" Snippet Support
Plug 'SirVer/ultisnips'                            " Snippet engine
Plug 'honza/vim-snippets'                          " Predefined snippets for many languages

" JavaScript, React, TypeScript
Plug 'pangloss/vim-javascript'                     " JavaScript syntax highlighting
Plug 'mxw/vim-jsx'                                 " JSX syntax highlighting
Plug 'MaxMEllon/vim-jsx-pretty'                    " Enhanced JSX syntax highlighting

" Python and Django
Plug 'davidhalter/jedi-vim'                        " Python autocompletion and more
Plug 'psf/black'                                   " Python code formatter (Black)

" Intellisense engine (Coc.nvim)
Plug 'neoclide/coc.nvim', {'branch': 'release'}    " Intellisense and language support

" Color Themes
Plug 'joshdick/onedark.vim'                        " One Dark theme

call plug#end()

" General settings
set tabstop=4                                      " Set tab width to 4 spaces
set shiftwidth=4                                   " Number of spaces to use for each step of (auto)indent
set expandtab                                      " Use spaces instead of tabs
set nocompatible                                   " Use Vim defaults instead of 100% vi compatibility
filetype plugin indent on                          " Enable filetype detection and plugin loading
syntax on                                          " Enable syntax highlighting
set background=dark                                " Set background color


" Coc.nvim settings and autocompletion
let g:coc_global_extensions = [
    \ 'coc-python',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-json',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-tsserver',
    \ 'coc-tailwindcss'
    \ ]

" Auto-complete suggestions with Enter key
inoremap <expr> <CR> (coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>")

" Filetype-specific settings
autocmd BufNewFile,BufRead *.jsx,*.tsx set filetype=javascriptreact
autocmd BufNewFile,BufRead *.html set filetype=htmldjango
autocmd BufWritePre *.js,*.jsx,*.ts,*.tsx,*.json,*.css,*.scss :CocCommand prettier.formatFile

" Additional LSP configuration for Coc.nvim
autocmd CursorHold * if CocAction('hasProvider', 'hover') | silent call CocActionAsync('doHover') | endif

" Format files automatically on save
autocmd BufWritePre *.py,*.js,*.jsx,*.ts,*.tsx,*.css,*.scss,*.html :CocCommand editor.action.formatDocument

" Use Coc.nvim for Go-to-definition and related LSP features
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <C-p> :Files<CR>
" Auto-pairs configuration
let g:AutoPairsFlyMode = 1  " Enable fly mode for auto-pairs

" Optional: Custom mappings (if needed)
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

