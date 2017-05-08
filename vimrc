call plug#begin('~/.vim/plugged')

Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'altercation/vim-colors-solarized'
Plug 'Valloric/YouCompleteMe', {'do': './install.py'}
Plug 'Yggdroot/indentLine'
Plug 'albfan/ag.vim'
Plug 'bling/vim-bufferline'
Plug 'chase/vim-ansible-yaml'
Plug 'ctrlpvim/ctrlp.vim' | Plug 'jasoncodes/ctrlp-modified.vim'
Plug 'ervandew/supertab'
Plug 'godlygeek/tabular'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kchmck/vim-coffee-script'
Plug 'vim-scripts/matchit.zip'
Plug 'moll/vim-bbye'
Plug 'myusuf3/numbers.vim'
Plug 'rodjek/vim-puppet'
Plug 'rstacruz/sparkup'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/vim-airline' | Plug 'vim-airline/vim-airline-themes'
Plug 'vim-perl/vim-perl', { 'for': 'perl', 'do': 'make clean carp dancer highlight-all-pragmas moose test-more try-tiny' }
Plug 'vim-ruby/vim-ruby'
Plug 'vxf/dbext.vim'

call plug#end()

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.

syntax enable
filetype on
filetype plugin on
filetype indent on

set autoindent
set autoread
set backspace=indent,eol,start
set cindent
set cinkeys-=0#
set cmdheight=2
set cpoptions+=$
set encoding=utf-8
set expandtab
set hidden
set history=100
set ignorecase
set incsearch
set laststatus=2
set nolazyredraw
set nomodeline
set nostartofline
set notimeout ttimeout ttimeoutlen=200
set nrformats+=alpha
set number
set ruler
set scrolloff=4
set shiftwidth=2
set showcmd
set showmode
set smartcase
set softtabstop=2
set switchbuf=useopen
set t_Co=256
set title
set vb t_vb=
set visualbell
set wildmenu

" Don't delete trail space for following two settings
set list listchars=tab:\ \ ,trail:✗
set fillchars-=vert:\| | set fillchars+=vert:\ 

" Solarized options
let g:solarized_termcolors=256
let g:solarized_termtrans=0
set background=dark
colorscheme solarized

highlight CursorLine ctermbg=236
highlight LineNr     ctermbg=NONE
highlight Normal     ctermbg=NONE
highlight SignColum  ctermbg=NONE
highlight SpecialKey term=standout ctermbg=NONE ctermfg=DarkGreen
highlight nonText    ctermbg=NONE

" Use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>
set cul

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search
nnoremap <C-L> :nohl<CR><C-L>
nnoremap Q <nop>

"Disable Arrow Keys
noremap <Up>   <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"Double Esc keys to close window
noremap <silent> <Esc><Esc>c :Bdelete!<CR>

"F5 to refresh NerdTree window
noremap <F5> :NERDTreeFind<cr><C-w>p

"CtrlP modified key mapping
noremap <Esc>m :CtrlPModified<CR>

"Neovim key mappings
if has ('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <A-h> <C-\><C-n><C-w>h
  tnoremap <A-j> <C-\><C-n><C-w>j
  tnoremap <A-k> <C-\><C-n><C-w>k
  tnoremap <A-l> <C-\><C-n><C-w>l
  nnoremap <A-h> <C-w>h
  nnoremap <A-j> <C-w>j
  nnoremap <A-k> <C-w>k
  nnoremap <A-l> <C-w>l
  nnoremap <silent> <A--> :wincmd -<cr>
  nnoremap <silent> <A-=> :wincmd +<cr>
  nnoremap <silent> <A-,> :wincmd <<cr>
  nnoremap <silent> <A-.> :wincmd ><cr>
else
  "double Esc keys to move around windows
  noremap <silent> <Esc><Esc>k :wincmd k<cr>
  noremap <silent> <Esc><Esc>j :wincmd j<cr>
  noremap <silent> <Esc><Esc>h :wincmd h<cr>
  noremap <silent> <Esc><Esc>l :wincmd l<cr>
  "Alt keys to resize window
  noremap <silent> <Esc>- :wincmd -<cr>
  noremap <silent> <Esc>= :wincmd +<cr>
  noremap <silent> <Esc>, :wincmd <<cr>
  noremap <silent> <Esc>. :wincmd ><cr>
endif

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"------------------------------------------------------------
" dbext MySQL connection profile
let g:dbext_default_profile='Local'
let g:dbext_default_profile_LE='type=MYSQL:user=User:passwd=PW:dbname=:host=:port=3306'
let g:dbext_default_history_size=4096
let g:dbext_default_history_max_entry=0

" Set dbext default buffer line
let g:dbext_default_buffer_lines=20

" Auto load .vimrc file when it is written
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" NERDTreeTabs configuration
let g:nerdtree_tabs_smart_startup_focus=2
let g:nerdtree_tabs_open_on_console_startup=1

"Airline configuration
let g:airline#extensions#tabline#enabled=0
let g:airline_theme='molokai'
if !exists('g:airline_powerline_fonts')
  let g:airline_left_sep='›'
  let g:airline_right_sep='‹'
endif

"ctrlp settings
let g:ctrlp_switch_buffer='ET'
let g:ctrlp_open_new_file='t'
let g:ctrlp_open_multiple_files='tj'

"indentLine settings
"let g:indentLine_first_char='»'
"let g:indentLine_showFirstIndentLevel=1
let g:indentLine_bufNameExclude  = ['NERD_tree.*']
let g:indentLine_fileTypeExclude = ['text']
let g:indentLine_conceallevel = 2
let g:indentLine_char = '┆'

if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h11:cANSI
  endif
endif

autocmd FileType python setlocal shiftwidth=2 tabstop=2
