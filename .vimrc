" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set incsearch		" Incremental search
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set smartcase		" Do smart case matching
set ignorecase		" Do case insensitive matching
set showmatch		" Show matching brackets.
set autowrite		" Automatically save before commands like :next and :make
set number
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set pastetoggle=<F2>
set clipboard=unnamedplus
set hlsearch
set so=10		" Buffer between cursor top and bottom
set wildmenu		" Provides list of possible cmd completion
"set ruler
"set rulerformat=%15(%c%V\ %p%%%)	" Setting the column position
set magic		" For regualr experssions
set ffs=unix,dos,mac	" Use UNIX as the standard file type
set wrap		" Wrap lines
set t_Co=256		" 256 colour

" Key mappings
nmap <C-l> <C-w>l	" Move left a window
nmap <C-h> <C-w>h	" Move right a window
nmap <C-j> <C-w>j	" Move up a window
nmap <C-k> <C-w>k	" Move down a window
imap <c-d> <esc>xa
imap <c-f> <esc>ddi
imap <c-s> <esc>dwi

" Setting colour scheme
colorscheme desert
syntax on

" Setting autocmd


" Currently using airline
let g:airline_theme		= 'papercolor'
let g:airline_powerline_fonts	= 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
"et g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"let g:airline_right_alt_sep = ''
"let g:airline_symbols.branch = ''
"let g:airline_symbols.readonly = ''
"let g:airline_symbols.linenr = ''
"let g:airline_detect_modified	= 1
"let g:airline_detect_paste	= 1
"let g:airline_detect_crypt	= 1
"let g:airline_detect_iminsert	= 0
"let g:airline_exclude_filenames = [] " see source for current list
"let g:airline_symbols.space = '\ua0'
let g:airline#extensions#disable_rtp_load = 0

" This sets a vim status bar
"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
"set statusline=\ %{(&fenc)}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L\ %P\ \ \ Col:\ (%c%V\)
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l/%L\ %P\ \ \ Col:\ (%c%V\)
"hi StatusLine ctermbg=5 ctermfg=3
set laststatus=2

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" Tmux
let g:airline#extensions#tmuxline#enabled = 1

"Pathogen
execute pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
