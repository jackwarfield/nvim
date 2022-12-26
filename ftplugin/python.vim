let g:python_recommended_style = 0
setlocal tabstop=2 softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
syntax on

command RePyIm !reorder-python-imports %:t
