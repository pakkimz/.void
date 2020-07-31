set termguicolors                                       " enable true colors support
set synmaxcol=128                                       " syntax coloring lines that are too long just slows down the world
set regexpengine=1																			" fixes slow speed due to syntax highlighting
set updatetime=50
set number
set noshowmode                                          " hide the insert status
set showcmd                                             " showing command history
set matchtime=3
set ttimeoutlen=10                                      " faster sequance esc+O
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=106
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
set scrolloff=5
set sidescrolloff=5
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

let mapleader = "\<Space>"
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let g:move_map_keys = 0                                 " disable other keys vim-move and just use my mapping below
let g:comfortable_motion_no_default_key_mappings = 1    " disable default mapping
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_split_size = 10
let g:tagbar_sort = 0                                   " order tags based on file order, don't sort alphabetically
let g:tagbar_width = 25
let g:NERDTreeWinSize = 25
let g:NERDTreeChDirMode = 2															" autochange directory from nerdtree
let g:highlightedyank_highlight_duration = 100
let g:ag_mapping_message = 0
let g:ag_highlight = 1

" change cursor shape in different mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

colorscheme gummybears