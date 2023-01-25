lua require("packages")

"Vundle
"set nocompatible
"filetype off
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'tabnine/YouCompleteMe'
"call vundle#end()

"Plugin 'file:///Users/jtw5zc/YouCompleteMe'

set background=dark

"Tabnine autocomplete
"set rtp+=~/tabnine-vim

"Spellcheck auto-enabled markdown files
autocmd BufRead,BufNewFile *.md setlocal spell

"Underline instead of highlight for Spell
augroup SpellUnderline
  autocmd!
  autocmd ColorScheme *
    \ highlight SpellBad
    \   cterm=underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=reverse
    \   gui=Undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellCap
    \   cterm=underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=reverse
    \   gui=undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellLocal
    \   cterm=underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=reverse
    \   gui=undercurl
    \   guisp=Red
  autocmd ColorScheme *
    \ highlight SpellRare
    \   cterm=underline
    \   ctermfg=NONE
    \   ctermbg=NONE
    \   term=reverse
    \   gui=undercurl
    \   guisp=Red
augroup END

"By-line scrolling based on screen positon rather than line number
nmap j gj
nmap k gk
"nmap j gjzz
"nmap k gkzz
"nmap G Gzz

"Make sure that Shift-Arrow Key does what I want it to do when running through
"tmux
map ;2C <S-Right>
map ;2A <S-Up>
map ;2D <S-Left>
map ;2B <S-Down>

" Execute current buffer in python if in normal mode and press ,p
"autocmd FileType python map <buffer> ,p :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python map <buffer> ,p :w<CR>:exec '!py' shellescape(@%, 1)<CR>
" autocmd FileType python imap <buffer> ,p <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>

"Mode Settings

let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

set nocompatible " do not act like Vi

syntax enable
filetype plugin on
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
"set smartindent

set incsearch
"set scrolloff=8
set colorcolumn=80

"colo peachpuff
"colo default

set number
set ruler

set backspace=indent,eol,start 

" these were added with guidance from the presentation at https://github.com/changemewtf/no_plugins
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**
set wildmenu
" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzz
" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer
" AUTOCOMPLETE:
" The good stuff is documented in |ins-completion|
" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option
" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list
" FILE BROWSING:
" Tweaks for browsing
let g:netrw_preview = 1
let g:netrw_winsize = 30

let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
"let g:netrw_list_hide=2 "netrw_gitignore#Hide()
"let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" Create the `tags` file (may need to install ctags first)
" command! MakeTags !ctags -R ~/
" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack
" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags
" -browse-maps| for more mappings
vnoremap ,c "+y
nnoremap ,v "+p
noremap ,l :ccl<ENTER>
noremap ,t :tabn<CR>

"call plug#begin('~/.vim/plugged')
"Plug 'lervag/vimtex'
""Plug 'tzachar/cmp-tabnine'
"call plug#end()

"Typewriter mode
set so=99
"nmap j gjzz
"nmap k gkzz
"nmap G Gzz

"resize splits by 5 with SPACE plus minus
nnoremap <silent> <Leader>+ :exe "vertical resize +5"<CR>
nnoremap <silent> <Leader>- :exe "vertical resize -5"<CR>

"vimtex stuff
let g:vimtex_view_general_viewer = 'zathura'
