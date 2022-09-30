noremap <Up> <Nop>
noremap <Down> <Nop>


noremap <Left> <Nop>
noremap <Right> <Nop>

let mapleader = "\<Space>"
set relativenumber
set showcmd
set shiftwidth=2
set shiftwidth=2
set tabstop=2

set autoread
set number
set cmdheight=2
set encoding=utf8
set ffs=unix,dos,mac
set noerrorbells
set novisualbell
set t_vb=
set tm=500
set ignorecase
set smartcase
set hlsearch
set incsearch
set lazyredraw
set magic
set t_Co=256
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
set cursorline

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

set so =7

let g:ycm_confirm_extra_conf = 0

function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	endif
	return ''
endfunction


autocmd BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\   exe "normal! g`\"" |
			\ endif	

nnoremap <leader>w :w<CR>
nnoremap <leader>W :w<CR>
command WW w !sudo tee % > /dev/null


xnoremap <leader>c "0
nnoremap <leader>c "0

xnoremap <leader>C "*
nnoremap <leader>C "*

nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>q :wq<CR>
nnoremap <leader>Q :q<CR>
nnoremap <leader>rc :tabe ~/.vimrc<cr>
nnoremap <leader>in :normal magg=G`a<cr>
nnoremap <leader>po :tabe postSave.sh<cr>


nnoremap <silent><C-n> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-j> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-m> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><C-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

set background=dark

nnoremap <leader>k :!make && echo ".\n" && ./main < main.in<cr>
autocmd! BufWritePre *.cpp :normal gg=G``
"autocmd! BufWritePost main.cpp :!g++ main.cpp -o main -std=c++17 && echo ".\n" && ./main
autocmd! BufWritePost main.cpp :!make && echo ".\n" && ./main < main.in
"autocmd! BufWritePost test.cpp :!g++ test.cpp -o test -std=c++17 && ./test

"autocmd! BufWritePost *.cpp :!g++ % -o %.out -std=c++17 && echo ".\n" && ./%.out < %.in
"autocmd! BufWritePost *.cpp :! test -f postSave.sh && ./postSave.sh
autocmd! BufWritePost *.c :! test -f postSave.sh && ./postSave.sh
autocmd! BufWritePost *.py :! test -f postSave.sh && ./postSave.sh
autocmd! BufWritePost *.js :! test -f postSave.sh && ./postSave.sh

autocmd! bufwritepost .vimrc source %
autocmd! bufwritepost *.vim source /Users/fox/.vimrc

inoremap { {}<Esc>ha

let g:camelcasemotion_key = '<leader>'

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

set ttyfast
set mouse=a


set timeout ttimeout
set timeoutlen=300
set ttimeoutlen=20

"let g:header_field_author = 'Rafael Fox'
"let g:header_field_author_email = 'rafael@rooqbiomed.com'

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vim-autoformat/vim-autoformat'
Plug 'preservim/nerdtree'
Plug 'justinmk/vim-sneak'
Plug 'ycm-core/YouCompleteMe'
Plug 'alpertuna/vim-header'
Plug 'KabbAmine/yowish.vim'
"Plug 'crusoexia/vim-monokai'
Plug 'pangloss/vim-javascript'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'sudar/comments.vim'
call plug#end()

"colorscheme monokai
source /Users/fox/.vim/customTheme
