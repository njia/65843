 " solarized options 
 let g:solarized_termcolors = 16
 "let g:solarized_termtrans = 1
 set background=dark
 colorscheme solarized
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
 set vb t_vb=
 set visualbell
 set wildmenu
 set t_Co=256
 set encoding=utf-8
 set cpoptions+=$
 set number
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
 nnoremap Q <nop>
 map <F5> :NERDTreeFind<cr><C-w>p


 "------------------------------------------------------------
 "
 set rtp+=~/.vim/bundle/vundle
 call vundle#rc()
 Bundle 'gmarik/vundle'
 Bundle 'SirVer/ultisnips'
 Bundle 'bash-support.vim'
 Bundle 'matchit.zip'
 Bundle 'scrooloose/nerdtree'
 Bundle 'scrooloose/syntastic'
 Bundle 'jistr/vim-nerdtree-tabs'
 Bundle 'tpope/vim-commentary'
 Bundle 'tpope/vim-fugitive'
 Bundle 'tpope/vim-ragtag'
 Bundle 'tpope/vim-rails'
 Bundle 'tpope/vim-rake'
 Bundle 'tpope/vim-repeat'
 Bundle 'tpope/vim-surround'
 Bundle 'myusuf3/numbers.vim'
 Bundle 'tristen/vim-sparkup'
 Bundle 'vxf/dbext.vim'
 Bundle 'Valloric/YouCompleteMe'
 Bundle 'kien/ctrlp.vim'
 Bundle 'jasoncodes/ctrlp-modified.vim'
 Bundle 'bling/vim-airline'
 Bundle 'bling/vim-bufferline'
 Bundle 'Solarized'
 Bundle 'nathanaelkane/vim-indent-guides'

 " dbext MySQL connection profile
 let g:dbext_default_profile = 'Local'
 let g:dbext_default_profile_Local = 'type=MYSQL:user=clear:passwd=:dbname=exchange_development:host=localhost:port=13306'
 let g:dbext_default_profile_Prod_Live_Export = 'type=MYSQL:user=clear:passwd=`cat /Users/njia/src/test/pw.txt`:dbname=app_cleargrain_com_au_prod:host=skp-cgxdb02:port=3306'

 " Set dbext default buffer line 
 let g:dbext_default_buffer_lines = 20

 " Auto load .vimrc file when it is written
 augroup reload_vimrc " {
   autocmd!
   autocmd BufWritePost $MYVIMRC source $MYVIMRC
 augroup END " }

 " NERDTreeTabs configuration 
 let g:nerdtree_tabs_smart_startup_focus = 2
 let g:nerdtree_tabs_open_on_console_startup = 1


 let g:airline#extensions#tabline#enabled = 1
 let g:airline_theme = 'bubblegum'
 if !exists('g:airline_powerline_fonts')
   let g:airline_left_sep='›'  
   let g:airline_right_sep='‹' 
 endif

 let g:ctrlp_switch_buffer = 'ET'
 let g:indent_guides_start_level = 2
 "
