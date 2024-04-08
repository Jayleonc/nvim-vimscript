"============
"基本键位设置
"============
"     ^
"     i
" < j   l>
"     k
let mapleader=" "
noremap ; :
noremap <SPACE> <LEADER>
" Save & quit
noremap Q :q<CR>
noremap <C-q> :q!<CR>
noremap S :w<CR>


noremap h i
noremap H I
noremap i k
noremap k j
noremap j h

noremap W 5w
noremap B 5b
noremap I 5k
noremap K 5j

noremap ; :
noremap 9 0
noremap 0 $
noremap = nzz
noremap - Nzz
noremap <LEADER><CR> :nohlsearch<CR>
"noremap <esc> :noh<CR>

map <LEADER>i <C-w>k
map <LEADER>k <C-w>j
map <LEADER>l <C-w>l
map <LEADER>j <C-W>h

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

inoremap jj <esc>
inoremap <C-a> <ESC>A
inoremap <C-l> <Right>
inoremap <C-i> <Up>
inoremap <C-k> <Down>
inoremap <C-j> <Left>


map <LEADER>/ :vsplit<CR>
map <LEADER>- :split<CR>

map <F1> :edit ~/.config/nvim/init.vim<CR>
map <F2> :source ~/.config/nvim/init.vim<CR>
map <F3> :PlugInstall<CR>
map <F4> :PlugUpdate<CR>

noremap tn :tabe<CR>
noremap ta :-tabnext<CR>
noremap t; :+tabnext<CR>

"noremap lg :FloatermNew lazygit<CR>
"noremap <LEADER>ra :FloatermNew ranger<CR>

map <LEADER>sc :set spell!<CR>


vnoremap <C-c> "+y

map <LEADER><LEADER> <esc>/<++><CR>:nohlsearch<CR>c4l
