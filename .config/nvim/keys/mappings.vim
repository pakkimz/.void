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
nnoremap <BS> :bprevious<CR>

" add one space
nnoremap [s i<space><esc>
nnoremap ]s a<space><esc>

"easier horizontal scrolling
nnoremap zl ZL
nnoremap zh ZH

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
nnoremap <leader>A :Ag!<space>
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
nnoremap <silent> <F8> :TagbarToggle<CR>
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
