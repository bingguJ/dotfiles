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
"remap ctrl-j as splitline
nnoremap <C-j> i<CR><Esc>k$
"remap ctrl-j as splitline
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>w <C-w>


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
"endif
" airline
let g:airline_skip_empty_sections = 1
silent! call airline#extensions#whitespace#disable()

colorscheme onedark
highlight LineNr Ctermfg=33

"clipboard copy paste
" copy (write) highlighted text to .vimbuffer
"vmap <C-y> y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
"" paste from buffer
"map <C-h> :r ~/.vimbuffer<CR>

" WSL yank support
"let s:clip = '/mnt/c/Windows/System32/clip.exe'  " default location
"if executable(s:clip)
"    augroup WSLYank
"        autocmd!
"        autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
"    augroup END
"end

"python highlighting
let g:python_highlight_all = 1
