setlocal tabstop=2 softtabstop=2
setlocal shiftwidth=2
setlocal expandtab
"setlocal smartindent
"setlocal colorcolumn=90

autocmd BufWritePost *.cpp silent! execute '!clang-format -i %:p'
autocmd BufWritePost *.h silent! execute '!clang-format -i %:p'
