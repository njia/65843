set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'SirVer/ultisnips'
Plugin 'Solarized'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Yggdroot/indentLine'
Plugin 'albfan/ag.vim'
Plugin 'bling/vim-bufferline'
Plugin 'chase/vim-ansible-yaml'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'ervandew/supertab'
Plugin 'godlygeek/tabular'
Plugin 'honza/vim-snippets'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kchmck/vim-coffee-script'
Plugin 'matchit.zip'
Plugin 'moll/vim-bbye'
Plugin 'myusuf3/numbers.vim'
Plugin 'rodjek/vim-puppet'
Plugin 'rstacruz/sparkup'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-rake'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-perl/vim-perl'
Plugin 'vim-ruby/vim-ruby'
Plugin 'vxf/dbext.vim'

call vundle#end()
filetype indent plugin on

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.

syntax enable
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

"Alt keys to move around windows
noremap <silent> <Esc><Esc>k :wincmd k<CR>
noremap <silent> <Esc><Esc>j :wincmd j<CR>
noremap <silent> <Esc><Esc>h :wincmd h<CR>
noremap <silent> <Esc><Esc>l :wincmd l<CR>
"Alt keys to resize window vertically
noremap <silent> <Esc>- :wincmd -<CR>
noremap <silent> <Esc>= :wincmd +<CR>
noremap <silent> <Esc>< :wincmd <<CR>
noremap <silent> <Esc>> :wincmd ><CR>

"Alt keys to close window
noremap <silent> <Esc><Esc>c :Bdelete!<CR>

"F5 to refresh NerdTree window
map <F5> :NERDTreeFind<cr><C-w>p

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
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='bubblegum'
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
let g:indentLine_conceallevel=2
let g:indentLine_char='┆'

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
