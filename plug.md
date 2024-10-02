call plug#begin('~/.vim/plugged')

" CSS, React, and Tailwind Plugins
Plug 'mattn/emmet-vim'                             " Emmet for HTML/JSX
Plug 'hail2u/vim-css3-syntax'                      " CSS3 syntax highlighting
Plug 'styled-components/vim-styled-components', { 'branch': 'main' } " Styled components syntax
Plug 'arcticicestudio/nord-vim'                    " Nord color scheme
Plug 'airblade/vim-tailwind'                       " Tailwind CSS support
Plug 'mlaursen/vim-react-snippets'                 " React snippets

" Essential Plugins
Plug 'tpope/vim-surround'                          " Surround text with quotes, brackets, etc.
Plug 'junegunn/fzf.vim'                            " Fuzzy file finder
Plug 'airblade/vim-gitgutter'                      " Show git diff in the gutter
Plug 'preservim/nerdtree'                          " File tree explorer

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

" Color Themes and Aesthetic
Plug 'morhetz/gruvbox'                             " Gruvbox theme
Plug 'dracula/vim', { 'as': 'dracula' }            " Dracula theme
Plug 'joshdick/onedark.vim'                        " One Dark theme

" Additional Plugins
Plug 'tpope/vim-commentary'                        " Easy commenting
Plug 'tpope/vim-fugitive'                          " Git wrapper
Plug 'Xuyuanp/nerdtree-git-plugin'                 " Git integration for NERDTree
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " Fuzzy finder installation

" Auto-pairs and auto-closing tags
Plug 'jiangmiao/auto-pairs'                        " Automatically pair brackets and quotes
Plug 'alvan/vim-closetag'                          " Automatically close HTML/JSX tags

" Autocompletion
Plug 'hrsh7th/nvim-cmp'                            " Autocompletion engine

call plug#end()

" General settings
set number                                         " Show line numbers
set relativenumber                                 " Show relative line numbers
set tabstop=4                                      " Set tab width to 4 spaces
set background=dark                                " Dark mode
colorscheme onedark                                " Apply One Dark theme

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

" Auto-pairs and auto-closing tags configuration
let g:AutoPairsFlyMode = 1
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

