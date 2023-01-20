let g:python_recommended_style = 0
setlocal tabstop=2 softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
"syntax on

command RePyIm !reorder-python-imports %:t
command RPI !reorder-python-imports %:t
command Black !black %:t
command Mpldef r /Users/jtw5zc/.config/nvim/inserts/mplinsert.py

vnoremap ,m :norm ^i#<CR>
vnoremap ,n :norm ^x<CR>
nnoremap ,m :norm ^i#<CR>
nnoremap ,n :norm ^x<CR>
