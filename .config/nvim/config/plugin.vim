" vim highlightedyank
let g:highlightedyank_highlight_duration = 100

" vim delimitmate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1

" buffergator
let g:buffergator_viewport_split_policy = "B"
let g:buffergator_split_size = 10

" vim tagbar
let g:tagbar_sort = 0                                   " order tags based on file order, don't sort alphabetically
let g:tagbar_width = 25
nnoremap <silent> <F8> :TagbarToggle<CR>

" vim ag
let g:ag_mapping_message = 0
let g:ag_highlight = 1
nnoremap <leader>A :Ag!<space>

" vim quickscope
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_lazy_highlight = 1
let g:qs_max_chars = 125

" vim syntastic
let g:syntastic_check_on_wq = 0
nnoremap <C-w>e :Errors<CR>
nnoremap <silent> <C-s> :SyntasticToggleMode<CR>

" vim move
let g:move_map_keys = 0                                 " disable other keys vim-move and just use my mapping below
" vim-move mapping
vmap <C-j> <Plug>MoveBlockDown
vmap <C-k> <Plug>MoveBlockUp
nmap <C-j> <Plug>MoveLineDown
nmap <C-k> <Plug>MoveLineUp

" vim comfortable motion
let g:comfortable_motion_no_default_key_mappings = 1    " disable default mapping
" vim comfortablemotion, don't scroll too fast
nnoremap <silent> <C-d> :call comfortable_motion#flick(50)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-50)<CR>
nnoremap <silent> <C-f> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-100)<CR>

" vim nerdtree
let g:NERDTreeWinSize = 25
let g:NERDTreeChDirMode = 2															" autochange directory from nerdtree
let g:NERDTreeMouseMode = 2															" single click open directory
" close buffer in nerdtree open
nnoremap <silent><leader>d :bp<cr>:bd #<cr>
nnoremap <silent> <C-n> :NERDTreeToggle<CR>
