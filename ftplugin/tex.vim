"let g:vimtex_view_method = 'zathura'

set spell spelllang=en_us
set cc=
set linebreak

set background=light
hi clear SpellBad
hi SpellBad ctermfg=red ctermbg=NONE cterm=underline,bold
hi clear SpellLocal
hi SpellLocal ctermfg=cyan ctermbg=NONE cterm=underline,bold

vnoremap ,m :norm 0i%<CR>
vnoremap ,n :norm 0x<CR>
nnoremap ,m :norm 0i%<CR>
nnoremap ,n :norm 0x<CR>
