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

" Color Themes and Aesthetic
Plug 'morhetz/gruvbox'  " Gruvbox for better eye protection
Plug 'arcticicestudio/nord-vim'  " Another great color theme for readability

" Additional Plugins
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'         " Status line
Plug 'vim-airline/vim-airline-themes'  " Airline themes
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
colorscheme gruvbox  " Use Gruvbox theme, or switch to nord for eye protection

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
    \ ]

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

" Map Tab to go to the next tab
nnoremap <Tab> :tabnext<CR>

" Map Shift-Tab to go to the previous tab
nnoremap <S-Tab> :tabprevious<CR>

" Function to get the current time only (HH:MM AM/PM format)
function! AirlineTime()
    return strftime("%I:%M %p")  " 12-hour format with AM/PM
endfunction

" Airline sections configuration
let g:airline_section_a = airline#section#create(['mode'])                   " Show current mode (normal/insert/visual)
let g:airline_section_b = airline#section#create(['branch'])                 " Show Git branch
let g:airline_section_c = airline#section#create(['%f', 'readonly', 'modified'])  " Show filename, readonly flag, modified status
let g:airline_section_x = airline#section#create(['filetype']) " Show encoding (UTF-8), file format (unix, dos), and file type
let g:airline_section_y = airline#section#create(['%3l:%-2c', '%p%%'])       " Show line:column number and percentage through the file
let g:airline_section_z = airline#section#create_right(['%{AirlineTime()}'])  " Show time (HH:MM AM/PM format)

" Choose your preferred colorscheme
" For gruvbox:
colorscheme gruvbox      " Vim color scheme
let g:airline_theme = 'zenburn'

set background=dark

" For nord:
"colorscheme nord


