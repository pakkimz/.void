" https://gist.github.com/mattn/3f43125df1020fada9b6

function! s:disable_italic()
  let his = ''
  redir => his
  silent hi
  redir END
  let his = substitute(his, '\n\s\+', ' ', 'g')
  for line in split(his, "\n")
    if line !~ ' links to ' && line !~ ' cleared$'
      exe 'hi' substitute(substitute(line, ' xxx ', ' ', ''), 'italic', 'none', 'g')
    endif
  endfor
endfunction

command! DisableItalic call s:disable_italic()
DisableItalic
