filetype off

" ===================
" Plugins
" ===================
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'airblade/vim-rooter'
Plug 'hashivim/vim-terraform'
Plug 'juliosueiras/vim-terraform-completion'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Themes
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'sjl/badwolf'

call plug#end()

" ===================
" Generic
" ===================
set nocompatible

syntax enable
filetype plugin indent on

set number          " Show line nubmers
set nowrap          " Keep long lines
set laststatus=2    " Show the status line all the time
set tabstop=2       " Global tab width
set softtabstop=2   " Indentation with spaces
set shiftwidth=2    " And again, related
set expandtab       " Use spaces instead of tabs
set lazyredraw      " Speedy up the terminal
set background=dark
colorscheme gruvbox

" ===================
" GitGutter
" ===================
map <leader>gs :Gstatus<cr>
map <leader>gb :Gblame<cr>
map <leader>gc :Gcommit<cr>
map <leader>gp :!git push<cr>
map <leader>gs :Gstatus<cr>

" ===================
" GitRooter
" ===================
let g:rooter_patterns = ['Rakefile', '.git/']

" ===================
" Syntastic - Terraform
" ===================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" (Optional)
set completeopt-=preview

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:syntastic_terraform_tffilter_plan = 1

" ===================
" Nerdtree
" ===================
map <C-n> :NERDTreeToggle<CR>

let NERDTreeShowHidden=1

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ===================
" VimAirline
" ===================
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'
"let g:airline_powerline_fonts = 1
"let g:airline_symbols_ascii = 1
