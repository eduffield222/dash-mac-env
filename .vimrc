" base level stuff
set nocompatible

" tim popes awesome plugin manager
call pathogen#infect()

" coder configs
set ts=4 sw=4 et smartindent autoindent smartcase copyindent
set hls nu virtualedit=all bufhidden=hide
set noequalalways nowrap
set incsearch
set history=4000
set wmh=0
set vb t_vb=
set noeb
set foldmethod=manual foldcolumn=0
set backspace=indent,eol,start
au BufWinEnter * set bufhidden=hide

" ctags support
set tags=tags
"binary search tagfile
set tagbsearch



"update status lines automatically
let &ro = &ro

"case insensitive searching
set ic

"remember file positions/edits between opens
set viminfo='10,\"100,:4000,%,n~/.viminfo
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

 "persistent undo
try 
    set undodir=~/.vim/undo
    set undofile
    set undolevels=1000
    set undoreload=20000
catch
endtry

nnoremap U :GundoToggle<CR>

" color settings
synt on
"detect filetypes for syntax rules
filetype on
"propagate filetype detection (and indent rules) to plugins
filetype plugin indent on
"256 color support config (ansi fore/background color codes)
set t_AB=[48;5;%dm
set t_AF=[38;5;%dm
"enable 256 color support 
set t_Co=256 
"enable moos colors
colo moo_lazyviz


"custom vcscommand hooks
augroup VCSCommand
    au User VCSBufferCreated silent! nmap <unique> <buffer> q :silent bwipeout<cr>:silent set noscrollbind<cr>
    au User VCSBufferCreated silent! call VCSCommandScrollbindToBuffer()
    nmap dp dp]c
    nmap do do]c
    map dh :call DeleteHunk()<CR>
    map ]] :exec search('^@@','nW')<CR>
    map [[ :exec search('^@@','bW')<CR>
    map }} :call JumpPatternNext('^diff')<CR>
    map {{ :call JumpPatternPrev('^diff')<CR>
augroup END
"properly handle existing splits
fun! VCSCommandScrollbindToBuffer()
	if exists("b:VCSCommandCommand")
		if b:VCSCommandCommand == 'log'
			return
		elseif b:VCSCommandCommand == 'status'
			return
		elseif b:VCSCommandCommand == 'diff'
			return
		endif
	endif

	exe "wincmd W" | let topline = line("w0") | set scrollbind nowrap | wincmd p
	exe topline
	exe 'normal zt'
	set scrollbind nowrap
endfun
"vertical split on all windows
let g:VCSCommandSplit = 'vertical'




" moocowmoo's super awesome key maps

"shell exec current line
nmap <leader>! :silent exec 'r!' . getline(".")<CR>

" fastquit
nnoremap Q :q!<cr>

" split resize
nmap <c-j> <c-w>j<c-w>_
nmap <c-k> <c-w>k<c-w>_

" clear search highlight
imap <leader><leader> <esc>:let @/=''<cr>
nmap <leader><leader> :let @/=''<cr>

" override star jump
nnoremap * *N

" space to page down
nmap <space> <c-d>

" diff stuff

fu! JumpPatternNext(pattern)
    if search(a:pattern,'nW') > 0
                exe search(a:pattern,'W')
        exe 'normal z'
        endif
endf

fu! JumpPatternPrev(pattern)
    if search(a:pattern,'nbW') > 0
        exe search(a:pattern,'bW')
        execute 'normal z'
    endif
endf

nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
