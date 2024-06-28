setlocal tabstop=4 softtabstop=4
setlocal shiftwidth=4
setlocal expandtab
"setlocal smartindent
"setlocal colorcolumn=90

autocmd BufWritePost *.go silent! execute '!gofmt -w %:p'
