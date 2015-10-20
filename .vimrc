set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdtree'
Plugin 'taglist.vim'

Plugin 'kien/ctrlp.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"
"
colorscheme elflord
set nu

" high light the word while pressing shift + asterisk
set hlsearch

"" ----------------------------------------

filetype plugin indent on

" show existing tab with 4-space width
set tabstop=4

" when indenting with '>', use 4-space width
set shiftwidth=4

" on pressing tab, insert 4 spaces
set expandtab

"" ----------------------------------------

filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

"" ----------------------------------------
"" for_vimgrep_to_exclude_these_files
""
  set wildignore+=tags

  "" for object
  set wildignore+=*.o

  "" for cscope files
  set wildignore+=cscope.in.out

  "" for rails
  set wildignore+=log/development.log
  set wildignore+=tmp/cache/*

  "" for p2p
  set wildignore+=p2pserver "" binary file

""
"" for_vimgrep_to_exclude_these_files
"" ----------------------------------------

"set tags+=~/.rbenv/tags
set tags+=~/.rbenv/versions/2.2.2/lib/ruby/gems/2.2.0/gems/tags

"
" nerdtree
"
let NERDTreeShowHidden=1

map <C-n> :NERDTreeToggle<CR>

"
" taglist
"
map <F6> <ESC>:TlistToggle<CR>

"
" vimgrep
"
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <BAR> cw<CR>
map <C-j> :cn<CR>
map <C-k> :cp<CR>

""
"" goal: copy to system clipboard
"" usage: 1. press v
""        2. press hjkl to select area
""        3. press ctrl-c to yank to clipboard
""
vmap <c-c> "+y

""
"" add cscope key mapping
"" http://cscope.sourceforge.net/cscope_maps.vim
""
source ~/cc/bin2u/vimrc/cscope_maps.vim

"
" ctrlp
"

""
"" 'c' - the directory of the current file.
"" 'r' - the nearest ancestor that contains one of these directories or files: .git .hg .svn .bzr _darcs
"" 'a' - like c, but only if the current working directory outside of CtrlP is not 
""       a direct ancestor of the directory of the current file.
"" 0 or '' (empty string) - disable this feature.
""
"let g:ctrlp_working_path_mode = 'c'
let g:ctrlp_working_path_mode = 0

let g:ctrlp_max_files=0
let g:ctrlp_max_depth=200

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }
