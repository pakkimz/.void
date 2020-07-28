set nocompatible
set termguicolors                                       " enable true colors support
set synmaxcol=128                                       " syntax coloring lines that are too long just slows down the world
set t_Co=256                                            " enable 256 color
set t_ut=                                               " disbale background color erase (BCE)
set re=1                                                " fixes slow speed due to syntax highlighting
set updatetime=50
set number
set noshowmode                                          " hide the insert status
set showcmd                                             " showing command history
set matchtime=3
set ttimeoutlen=10                                      " faster sequance esc+O
set ttyfast
" set ttyscroll=3
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=106
set autoindent
set smartindent
set mouse=a
" set ttymouse=xterm2                                     " resize split with mouse
set wildmenu
set nostartofline                                       " sometimes cursor jumping back
set noexpandtab
set hlsearch
set autowrite		                                        " automatically save before commands like :next and :make
set complete-=i                                         " get rid system include in auto completion
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
set laststatus=1

syntax on
syntax sync minlines=256

filetype plugin indent on                               " all in one line

call plug#begin('~/.vim/plugged')
Plug 'dbb/vim-gummybears-colorscheme'
Plug 'sheerun/vim-polyglot'                             " mandatory
Plug 'Raimondi/delimitMate'                             " jump c-g g or just repeat the action
Plug 'preservim/nerdtree'
Plug 'yuttie/comfortable-motion.vim'
Plug 'jeetsukumaran/vim-buffergator'                    " leader-b for for buffer leader-t for tab
Plug 'machakann/vim-highlightedyank'
Plug 'henrik/vim-indexed-search'
Plug 'matze/vim-move'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'																	" ctrl-X spaces or enter in html
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'vim-scripts/argtextobj.vim'
Plug 'vim-scripts/loremipsum'
" Plug 'majutsushi/tagbar'                                " sudo xbps-install ctags
" Plug 'junegunn/goyo.vim'
" Plug 'Yggdroot/indentLine'                              " need expandtab to make it works
" Plug 'ivalkeen/vim-simpledb'
" Plug 'valloric/matchtagalways'
Plug 'ap/vim-css-color'
Plug 'captbaritone/better-indent-support-for-php-with-html'
call plug#end()

let mapleader = "\<Space>"
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let g:move_map_keys = 0                                 " disable other keys vim-move and just use my mapping below
let g:comfortable_motion_no_default_key_mappings = 1    " disable default mapping
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_split_size = 10
let g:tagbar_sort = 0                                   " order tags based on file order, don't sort alphabetically
let g:tagbar_width=25
let g:NERDTreeWinSize=25
let g:highlightedyank_highlight_duration = 100

" change cursor shape in different mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

colorscheme gummybears

" '., gi, gv, go
nnoremap g. `.

" make Y yank to end of line (like D or C)
nnoremap Y y$

" please use leader K to see man page
nnoremap K <Nop>

" say Nop for q and Q
noremap q <Nop>
noremap Q <Nop>

" supertab. for 'cancel complete C-e' / 'C-y for yes'
inoremap <tab> <C-p>
inoremap <S-tab> <tab>

" super duper tab
inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("\<C-x><c-p>"))
inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("\<C-x><c-n>"))

" intuitive moving buffer
nnoremap <C-l> :bnext<CR>
nnoremap <C-h> :bprevious<CR>

" add one space
nnoremap [s i<space><esc>
nnoremap ]s a<space><esc>

" re-select visual block after indenting
vnoremap < <gv
vnoremap > >gv

" paste multiple lines multiple times with simple ppppp
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" esc stuffs
inoremap <C-space> <Esc>`^
vnoremap <C-space> <Esc>gV
onoremap <C-space> <Esc>
cnoremap <C-space> <C-c>
nnoremap <C-space> <Esc>:noh<CR>

" play with leader
nnoremap <silent><leader>w :w!<CR>
nnoremap <silent><leader>W :wa!<CR>
nnoremap <silent><leader>x :x<CR>
nnoremap <silent><leader>q :q<CR>
nnoremap <silent><leader>Q :q!<CR>
nnoremap <silent><leader>r :bd<CR>
nnoremap <silent><leader>R :bw!<CR>
nnoremap <silent><leader>o :%bd\|e#\|bd#<CR>
nnoremap <silent><leader>O :%bd!\|e#\|bd!#<CR>
nnoremap <silent><leader>f :e .<CR>
nnoremap <silent><leader>F :e ~/<CR>
nnoremap <leader>e :e<Space>
nnoremap <leader>E :e <C-R>=expand("%:p:h") . "/" <CR>
nnoremap <silent><leader>G :Goyo<CR>

" clipboard install vim-gtk or alias vim-x11
nnoremap gy "+y
nnoremap gY "+y$
vnoremap gy "+y
nnoremap gd "+d
nnoremap gD "+D
vnoremap gd "+d
nnoremap gp "+p
nnoremap gP "+P
vnoremap gp "+p

" moving around in insert & command mode, ctrl+b & ctrl+e move beginning and end
inoremap <A-h> <left>
inoremap <A-l> <right>
inoremap <A-k> <S-Left>
inoremap <A-j> <S-Right>
cnoremap <A-h> <left>
cnoremap <A-l> <right>
cnoremap <A-k> <S-Left>
cnoremap <A-j> <S-Right>

" vim-move mapping
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <C-j> <Plug>MoveLineDown
nmap <C-k> <Plug>MoveLineUp

" don't scroll too fast
nnoremap <silent> <C-d> :call comfortable_motion#flick(50)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-50)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-100)<CR>

" tagbar and nerdtree
nnoremap <F8> :TagbarToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" move between tags
runtime! macros/matchit.vim
" man page, use leader K to open it or :Man 3 {option} in command mode
runtime! ftplugin/man.vim
" plugin vim-repeat adding support to related plugins
silent! call repeat#set("\<Plug>MyWonderfulMap", v:count)
" resize splits when the window is resized
autocmd VimResized * :wincmd =
" save when losing focus
autocmd FocusLost * :silent! wall
" remove set hidden to properly remove netrw with bd command
autocmd FileType netrw setl bufhidden=wipe
" remove any trailing whitespace that is in the file
autocmd BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif
" auto remove multiple empty lines at the end of line
autocmd BufWrite * :%s/\(\s*\n\)\+\%$//ge
" replace groups or function of empty or whitespaces-only lines with one empty line
autocmd BufWrite * :%s/\(\s*\n\)\{3,}/\r\r/ge
" disable autocomment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" when switching buffers, preserve window view.
autocmd BufLeave * if !&diff | let b:winview = winsaveview() | endif
autocmd BufEnter * if exists('b:winview') && !&diff | call winrestview(b:winview) | unlet! b:winview | endif
" resets the soft tab value to 2 spaces when I open a Python file
autocmd FileType python set shiftwidth=2
" bug gummybears colorscheme in the end of buffer
highlight EndOfBuffer ctermbg=None
