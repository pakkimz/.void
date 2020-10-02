colorscheme gummybears
" colorscheme schellar

let mapleader = ' '
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMateBackspace = 1
let g:move_map_keys = 0                                 " disable other keys vim-move and just use my mapping
let g:NERDTreeWinSize = 25
let g:highlightedyank_highlight_duration = 100
let g:comfortable_motion_no_default_key_mappings = 1    " disable default mapping
" let g:buffergator_viewport_split_policy = "B"
" let g:buffergator_split_size = 10
let g:tagbar_sort = 0                                   " order tags based on file order, don't sort alphabetically
let g:tagbar_width = 25
let g:ag_highlight = 1
let g:ag_mapping_message = 0
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_lazy_highlight = 1
let g:qs_max_chars = 300
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }	" dont autostart
let g:syntastic_check_on_wq = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = 'eslint_d'

" change cursor shape in different mode
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"
let &t_EI = "\<Esc>[2 q"

" toggle error vim syntastic
function! ToggleErrors()
	let old_last_winnr = winnr('$')
	lclose
	if old_last_winnr == winnr('$')
		Errors
	endif
endfunction
