 set nocompatible
 filetype indent plugin on
 syntax on
 set autoindent
 set backspace=indent,eol,start
 set cmdheight=2
 set hidden
 set ignorecase
 set incsearch
 set laststatus=2
 set nomodeline
 set nostartofline
 set notimeout ttimeout ttimeoutlen=200
 set ruler
 set showcmd
 set title
 set showmode
 set smartcase
 set smartindent
 set t_vb=
 set visualbell
 set wildmenu
 "
 " Use <F11> to toggle between 'paste' and 'nopaste'
 set pastetoggle=<F11>

 " Indentation settings for using 2 spaces instead of tabs.
 " Do not change 'tabstop' from its default value of 8 with this setup.
 set shiftwidth=2
 set softtabstop=2
 set expandtab

 " Map <C-L> (redraw screen) to also turn off search highlighting until the
 " next search
 nnoremap <C-L> :nohl<CR><C-L>

 "------------------------------------------------------------
 "
 set rtp+=~/.vim/bundle/vundle
 call vundle#rc()
 Bundle 'gmarik/vundle'
 "
 Bundle 'SirVer/ultisnips'
 Bundle 'bash-support.vim'
 Bundle 'matchit.zip'
 Bundle 'scrooloose/nerdtree'
 Bundle 'jistr/vim-nerdtree-tabs'
 Bundle 'tpope/vim-commentary'
 Bundle 'tpope/vim-fugitive'
 Bundle 'tpope/vim-ragtag'
 Bundle 'tpope/vim-rails'
 Bundle 'tpope/vim-rake'
 Bundle 'tpope/vim-repeat'
 Bundle 'tpope/vim-surround'
 Bundle 'tristen/vim-sparkup'
 Bundle 'vxf/dbext.vim'
 Bundle 'wincent/Command-T'

 " dbext MySQL connection profile
 let g:dbext_default_always_prompt_for_variables = 1
 let g:dbext_default_profile_MySQL_Local = 'type=MYSQL:user=clear:passwd=:dbname=exchange_development:host=localhost:port=13306'
 let g:dbext_default_profile_LiveExport= 'type=MYSQL:user=clear:passwd=zq12wxce34rv:dbname=app_cleargrain_com_au_prod:host=skp-cgxdb02:port=3306'

 " Set dbext default buffer line 
 let g:dbext_default_buffer_lines = 25

 " Auto load .vimrc file when it is written
 augroup reload_vimrc " {
   autocmd!
   autocmd BufWritePost $MYVIMRC source $MYVIMRC
 augroup END " }

 " Start NERDTree if Vim started without any file name
 " autocmd vimenter * if !argc() | NERDTree | endif

 " NERDTreeTabs configuration 
 let g:nerdtree_tabs_smart_startup_focus = 2
 let g:nerdtree_tabs_open_on_console_startup = 1
