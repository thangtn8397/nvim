let g:mapleader = " " 
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10 
syntax on

set encoding=UTF-8
set mouse=a
set incsearch 
set hlsearch
set relativenumber
set number

set tabstop=2
set softtabstop=2
set shiftwidth=2



" ============================================================================ "
" ===                             KEY MAPPINGS                             === "
" ============================================================================ "
"
"
"split
nmap <leader>/ :vsplit<CR>
nmap <leader>\ :split<CR>


nnoremap <leader>h :nohl<CR>
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <c-o>:echo "no right for you!"<cr>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <c-o>:echo "no up for you!"<cr>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <c-o>:echo "no down for you!"<cr>


" === Nerdtree shorcuts === "
"  <leader>n - Toggle NERDTree on/off
"  <leader>f - Opens current file location in NERDTree
nmap <silent><C-d> :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>


" Quick window switching
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l


"Theme
colorscheme gruvbox
