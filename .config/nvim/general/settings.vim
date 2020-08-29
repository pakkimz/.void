set termguicolors                                       " enable true colors support
set synmaxcol=300                                       " set maximal column for syntax coloring
set regexpengine=1																			" fixes slow speed due to syntax highlighting
set updatetime=100
set number
set showcmd                                             " showing command history
set noshowmode                                          " hide the insert status
set noruler																							" hide info in bottom of screen
set statusline=⠀  																			" blank statusline u2800(ctrl+v)
set matchtime=3
set ttimeoutlen=10                                      " faster sequance esc+O
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=106
set columns=106																					" auto newline in insert mode
set linebreak																						" break by word rather than character
set autoindent
set smartindent
set mouse=a
set wildmenu
set nostartofline                                       " sometimes cursor jumping back
set noexpandtab
set hlsearch
set confirm																							" ask to save buffer
set autowrite		                                        " automatically save before commands like :next and :make
set complete-=i                                         " get rid system include in auto completion
set pumheight=10																				" makes popup menu smaller
set laststatus=1
set scrolloff=2
set sidescrolloff=2
set splitbelow
set splitright
set undofile
set history=1000
set backup
set backupext=.bak
set viminfo='20,\"100,s10,h                             " dont store more than 100 lines, h: disable hlsearch, s10 max KB
set undodir^=~/.vim/tmp/undo//
set directory=~/.vim/tmp/swap//
set backupdir=~/.vim/tmp/backup//
set dictionary=/usr/share/dict/words
set backspace=indent,eol,start													" set backspace to delete normally
set listchars=tab:→\ ,eol:↲                             " unicode for → = u2192, ↲ = u21b2. set list to display it
set hidden																							" moving buffer without saving it

let mapleader = ' '

" change cursor shape in different mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

colorscheme gummybears
" colorscheme schellar
