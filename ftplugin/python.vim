let g:python_recommended_style = 0
setlocal tabstop=2 softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
"syntax on

"see :help ft-python-indent
let g:python_indent = {}
let g:python_indent.closed_paren_align_last_line = v:false

command RePyIm !reorder-python-imports %:p
command RPI !reorder-python-imports %:p
command Black !black %:p
command Mpldef r /Users/jtw5zc/.config/nvim/inserts/mplinsert.py
command Mainfunc r /Users/jtw5zc/.config/nvim/inserts/main_function.py

vnoremap ,m :norm ^i#<CR>
vnoremap ,n :norm ^x<CR>
nnoremap ,m :norm ^i#<CR>
nnoremap ,n :norm ^x<CR>
