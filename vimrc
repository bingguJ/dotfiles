" Vim-Plug
call plug#begin('~/.vim/plugged')
Plug 'markonm/traces.vim'
"Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'haishanh/night-owl.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'joshdick/onedark.vim' 
Plug 'easymotion/vim-easymotion'
"Plug 'mattn/emmet-vim'
Plug 'vim-python/python-syntax'
Plug 'mbbill/undotree'
Plug 'tpope/vim-fugitive'
"Plug 'Lokaltog/vim-powerline'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
"Plug 'kana/vim-surround'
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'liuchengxu/vista.vim'
Plug 'neoclide/coc.nvim',{'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'jalvesaq/Nvim-R' 
"Jupyter notebooks
"Plug 'goerz/jupytext.vim'
Plug 'Yggdroot/indentLine'
Plug 'stefandtw/quickfix-reflector.vim'
"Plug 'kien/rainbow_parentheses.vim'
Plug 'luochen1990/rainbow'
call plug#end()

"easymotion
let mapleader="\\"
let g:EasyMotion_do_mapping = 0
map <Leader> <Plug>(easymotion-prefix)
map <Leader>s <Plug>(easymotion-bd-f)
nmap <Leader>s <Plug>(easymotion-overwin-f)
map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)
map <Leader>n <Plug>(easymotion-bd-n)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

"fzf show detail in the center
let g:fzf_layout = {'window':{'width':0.8,'height':0.8}}
let $FZF_DEFAULT_OPTS='--reverse'

"common setting
set noerrorbells
syntax on
set tabstop=4 
set shiftwidth=4
set expandtab
set number
set cursorline
hi CursorLine ctermbg=0
set encoding=utf-8
set hidden
set hlsearch
set relativenumber
set autoindent
set autoread
filetype plugin indent on
set backspace=indent,eol,start
set undodir=~/.vim/undodir
set undofile

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
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'r' : ['<C-W>r'     , 'window-rotate']             ,
      \ '+' : ['<C-W>5+'    , 'vertical-resize-up']    ,
      \ '-' : ['<C-W>5-'    , 'vertical-resize-down']   ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 'o' : ['<C-W>o'     , 'only-window']        ,
      \ 'q' : ['<C-W>q'     , 'close_current-window']        ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ '_' : ['<C-W>_'    , 'zoom-window-vertical']            ,
      \ '|' : ['<C-W>|'    , 'zoom-window-horizontal']            ,
      \ 'z' : [':wincmd | | :wincmd _'    , 'zoom-window']            ,
      \ }
"let g:which_key_map['e'] = {
"      \ 'name' : '+execute' ,
"      \ 'e' : ['0y$:!<c-r>"'    , 'exec-current-line']            ,
"      \ 'r' : ['0y$:r!<c-r>"'    , 'exec-and-paste-outcome']            ,
"      \ 't' : ['<c-r>\" '    , 'test']            ,
"      \ }
let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : [':bd!'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'l' : ['last'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ 's' : ['<C-^>'     , 'switch-buffer']        ,
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
      \ 'm' : [':0tabmove'        , 'move to first'],
      \ 'M' : ['tabm'        , 'move to last'],
      \ 'e' : ['tabe'        , 'new-tabs'],
      \ 't' : ['tabs'        , 'list-tabs'],
      \ 'n' : ['tabn'        , 'next-tab'],
      \ 'p' : ['tabp'        , 'previous-tab'],
      \ 'f' : ['tabfirst'        , 'first-tab'],
      \ 'l' : ['tablast'        , 'last-tab'],
      \ 'q' : ['tabclose'        , 'close-tab'],
      \ 'c' : [':tabnew %'        , 'close-tab'],
      \ 'o' : ['tabonly'        , 'only-tab'],
      \ }


"remap ctrl-j as splitline
nnoremap <C-j> i<CR><Esc>k$
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>diff :windo diffthis<CR>
nnoremap <leader>doff :diffoff!<CR>
nnoremap <silent><leader>+ :vertical resize +5<CR>
nnoremap <silent><leader>- :vertical resize -5<CR>
nnoremap <leader>bn :bn<CR>
nnoremap <leader>bp :bp<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>F :Files 
nnoremap <leader>ee 0y$:!<c-r>"<CR>
nnoremap <leader>er 0y$:r!<c-r>"<CR>
nnoremap <leader>cs :CocSearch 
nnoremap <leader>cw :CocSearch <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>== gg=G<c-o><c-o>
nnoremap <leader>sc /<c-r>=expand("<cword>")<CR><CR>
nnoremap <leader>sr :%s/<c-r>=expand("<cword>")<CR>/
vnoremap <leader>sv y:%s/<c-r>"/
let g:which_key_map['e'] = {
      \ 'name' : '+execute' ,
      \ 'e' :  'exec-current-line',
      \ 'r' :  'exec-and-paste-outcome',
      \ }
let g:which_key_map['s'] = {
      \ 'name' : '+execute' ,
      \ 'c' :  'gsearch_cur_word',
      \ 'r' :  'greplace_cur_word',
      \ 'v' :  'greplace_hilight_word',
      \ 's' :['UltiSnips#ListSnippets()',  'greplace_hilight_word'],
      \ }

"Rainbow Parenthesis
let g:rainbow_active = 1
" let g:rbpt_colorpairs = [
"       \ ['brown',       'RoyalBlue3'],
"       \ ['gray',        'RoyalBlue3'],
"       \ ['Darkblue',    'SeaGreen3'],
"       \ ['darkgreen',   'firebrick3'],
"       \ ['darkcyan',    'RoyalBlue3'],
"       \ ['darkred',     'SeaGreen3'],
"       \ ['gray',        'RoyalBlue3'],
"       \ ]

" let g:rbpt_max = 16
" let g:rbpt_loadcmd_toggle = 0

" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces

"Cursor
"let &t_SI.="\e[5 q" "SI = INSERT mode
"let &t_SR.="\e[4 q" "SR = REPLACE mode
"let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Powerline
"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
"set laststatus=2
"set term=xterm-256color
"set t_Co=256
"let g:Powerline_symbols = 'fancy'

"Solve the background issue
"if &term =~ '256color'
"		    " Disable Background Color Erase (BCE) so that color schemes
"			"     " work properly when Vim is used inside tmux and GNU screen.
"			set t_ut=
"			set t_u7=
"endif
" airline
"let g:airline_skip_empty_sections = 1
"silent! call airline#extensions#whitespace#disable()

"lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

colorscheme onedark
highlight LineNr Ctermfg=33

""clipboard copy paste
"" copy (write) highlighted text to .vimbuffer
"vmap <C-y> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
"" paste from buffer
"map <C-h> :r ~/.vimbuffer<CR>
"
"" WSL yank support
"let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
"nnoremap "*Y :call system('/mnt/c/Windows/System32/clip.exe', @0)<CR>
"if executable(s:clip)
"    augroup WSLYank
"        autocmd!
"        "autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
"        "autocmd TextYankPost * if v:event.operator ==# 'y' && v:event.regname ==# ''| call system(s:clip, @0) | endif
"    augroup END
"end

"python highlighting
let g:python_highlight_all = 1

"python file setting
au BufNewFile,BufRead *.py set
    \ tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

au BufNewFile,BufRead *.json,*.html,*.css set
    \ tabstop=2
    \ softtabstop=2
    \ shiftwidth=2
"ipynb file template
"autocmd BufNewFile *.ipynb silent! 0r ~/.vim/templates/skeleton.ipynb

"indent line
let g:indentLine_color_term = 48

"ultiSnips
let g:UltiSnipsExpandTrigger="<Tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/plugged/vim-snippets/UltiSnips']
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"
"let g:UltiSnipsListSnippets="<c-e>"
