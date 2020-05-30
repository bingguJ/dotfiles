" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'haishanh/night-owl.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim' 
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'vim-python/python-syntax'
Plug 'mbbill/undotree'
"Plug 'Lokaltog/vim-powerline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
"Plug 'kana/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'liuchengxu/vim-which-key'
" Plug 'jalvesaq/Nvim-R' 
call plug#end()

"easymotion
map <Leader> <Plug>(easymotion-prefix)


"common setting
set noerrorbells
syntax on
set tabstop=4 softtabstop=4
set smartindent
set number
set cursorline
hi CursorLine ctermbg=0
set encoding=utf-8
set hidden

"vim which key config
let g:mapleader = "\<Space>"
set timeoutlen=300
nnoremap <silent><leader> :<c-u>WhichKey '<Space>'<CR>
call which_key#register('<Space>', "g:which_key_map")
"whichkey b
let g:which_key_map = {}
let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ '+' : ['<C-W>5+'    , 'vertical-resize-up']    ,
      \ '-' : ['<C-W>5-'    , 'vertical-resize-down']   ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 'o' : ['<C-W>o'     , 'only-window']        ,
      \ 'q' : ['<C-W>q'     , 'close_current-window']        ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'l' : ['last'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ 'b' : ['ls' , 'list-buffer'] ,
      \ 'a' : ['enew' , 'add-empty-buffer'] ,
      \ '?' : ['Buffers' , 'fzf-buffer'] ,
      \ }
let g:which_key_map.t = {
      \ 'name' : '+tab' ,
      \ '1' : ['1gt'        , 'tab1'],
      \ '2' : ['2gt'        , 'tab2'],
      \ '3' : ['3gt'        , 'tab3'],
      \ '4' : ['4gt'        , 'tab4'],
      \ '5' : ['5gt'        , 'tab5'],
      \ 'm' : ['tabm 0'        , 'move to first'],
      \ 'M' : ['tabm'        , 'move to last'],
      \ 'e' : ['tabe'        , 'new-tabs'],
      \ 't' : ['tabs'        , 'list-tabs'],
      \ 'n' : ['tabn'        , 'next-tab'],
      \ 'p' : ['tabp'        , 'previous-tab'],
      \ 'f' : ['tabfirst'        , 'first-tab'],
      \ 'l' : ['tablast'        , 'last-tab'],
      \ 'c' : ['tabclose'        , 'close-tab'],
      \ 'o' : ['tabonly'        , 'only-tab'],
      \ }


"remap ctrl-j as splitline
nnoremap <C-j> i<CR><Esc>k$
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>f :FZF<CR>
nnoremap <leader>F :FZF 

"Cursor
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Powerline
"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
"set laststatus=2
"set term=xterm-256color
"set t_Co=256
"let g:Powerline_symbols = 'fancy'

"Solve the background issue
if &term =~ '256color'
		    " Disable Background Color Erase (BCE) so that color schemes
			"     " work properly when Vim is used inside tmux and GNU screen.
			set t_ut=
endif
" airline
let g:airline_skip_empty_sections = 1
silent! call airline#extensions#whitespace#disable()

colorscheme onedark
highlight LineNr Ctermfg=33

"clipboard copy paste
" copy (write) highlighted text to .vimbuffer
vmap <C-y> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <C-h> :r ~/.vimbuffer<CR>

" WSL yank support
let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
if executable(s:clip)
    augroup WSLYank
        autocmd!
        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
    augroup END
end

"python highlighting
let g:python_highlight_all = 1

