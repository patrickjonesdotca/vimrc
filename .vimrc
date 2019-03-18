set nocompatible              " be iMproved, required
filetype off                  " required
colorscheme elflord

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'elzr/vim-json'
Plugin 'vim-ruby/vim-ruby'
Plugin 'wincent/Command-t'
Plugin 'majutsushi/tagbar'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'vim-scripts/closetag.vim'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'ngmy/vim-rubocop'
Plugin 'derekwyatt/vim-scala'
Plugin 'fatih/vim-go'
Plugin 'plasticboy/vim-markdown'
Plugin 'bronson/vim-crosshairs'
Plugin 'slim-template/vim-slim'
Plugin 'honza/vim-snippets'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'leafOfTree/vim-vue-plugin'
Plugin 'digitaltoad/vim-pug'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
filetype plugin indent on

set nobackup
set nowb
set noswapfile

set expandtab
set tabstop=2
set shiftwidth=2

set ai "Auto indent
set si "Smart indent
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-n> :NERDTreeToggle<cr>
map <C-x> :TagbarToggle<cr>
map <C-_> :GetCloseTag<cr>
inoremap <C-Tab> <C-R>=GetCloseTag()<CR>
set number

nnoremap <C-]> :vertical resize -5<cr>
nnoremap <C-down> :resize +5<cr>
nnoremap <C-up> :resize -5<cr>
nnoremap <C-[> :vertical resize +5<cr>
nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap ssx :shell<CR>
nnoremap tg :Tags<CR>
nnoremap fl :Files<CR>
nnoremap fz :FZF<CR>
nnoremap tn :tn<CR>

:imap jj <Esc>
:map ff zf}
:map fo zo
:map rf zf end
:map ro zo
au BufRead,BufNewFile *.template setfiletype json
au BufRead,BufNewFile *.decorator setfiletype ruby
autocmd BufWritePre * :%s/\s\+$//e

highlight CursorColumn cterm=NONE ctermbg=grey ctermfg=NONE guibg=black
highlight CursorLine cterm=NONE ctermbg=grey ctermfg=NONE guibg=black
nnoremap  xxx :set cursorline! cursorcolumn!<CR>
set rtp+=/usr/local/opt/fzf
