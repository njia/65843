 set nocompatible
 filetype indent plugin on
 syntax on
 set hidden
 set wildmenu
 set showcmd
 set showmatch
 set incsearch
 set nomodeline
 set ignorecase
 set smartcase
 set backspace=indent,eol,start
 set autoindent
 set smartindent
 set nostartofline
 set ruler
 set laststatus=2
 set visualbell
 set t_vb=
 set cmdheight=2
 set notimeout ttimeout ttimeoutlen=200
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
 Bundle 'tpope/vim-surround'
 Bundle 'tpope/vim-fugitive'
 Bundle 'tpope/vim-ragtag'
 Bundle 'tpope/vim-rake'
 Bundle 'tpope/vim-rails'
 Bundle 'tpope/vim-repeat'
 Bundle 'tpope/vim-commentary'
 Bundle 'matchit.zip'
 Bundle 'scrooloose/nerdtree'
 Bundle 'bash-support.vim'
 Bundle 'dbext.vim'
 Bundle 'wincent/Command-T'
 Bundle 'SirVer/ultisnips'
 Bundle 'tristen/vim-sparkup'

 " Auto load .vimrc file when it is written
 augroup reload_vimrc " {
   autocmd!
   autocmd BufWritePost $MYVIMRC source $MYVIMRC
 augroup END " }

 " Start NERDTree if Vim started without any file name
 autocmd vimenter * if !argc() | NERDTree | endif

 " Local MySQL 
 let g:dbext_default_profile_mysql_local = 'type=MYSQL:user=clear:dbname=exchange_development:host=localhost:port=13306'

 " CGX Live export
 let g:dbext_default_profile_live_export = 'type=MYSQL:user=clear:passwd=`cat /Users/njia/src/test/pw.txt`:dbname=app_cleargrain_com_au_prod:host=skp-cgxdb02:port=3306'
