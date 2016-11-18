set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
Plugin 'FuzzyFinder'
" scripts not on GitHub
Plugin 'git://git.wincent.com/command-t.git'


" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'

"Python 自動補齊
Plugin 'rkulla/pydiction'
Plugin 'davidhalter/jedi-vim'

"Python Tab自动补全
"Plugin 'vim-scripts/Pydiction'　　　　

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line
"
"
" set status line
 set laststatus=2
" enable powerline-fonts
 let g:airline_powerline_fonts = 1
" enable tabline
 let g:airline#extensions#tabline#enabled = 1
" set left separator
 let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
 let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
 let g:airline#extensions#tabline#buffer_nr_show = 1

 let g:airline_theme='base16'

"自動縮排：啟用自動縮排以後，在貼上剪貼簿的資料時排版可能會亂掉，這時可以手動切換至貼上模式
" :set paste 再進行貼上。
  set ai

" 啟用暗色背景模式。
  set background=dark

" 啟用行游標提示。
  set cursorline
" 文字編碼加入 utf8。
  set enc=utf8

" 標記關鍵字。
  set hls

" 只在 Normal 以及 Visual 模式使用滑鼠，也就是取消 Insert 模式的滑鼠，
  set mouse=nv

" 顯示行號。
  set number


"rkulla/pydiction   套件使用
filetype plugin on
let g:pydiction_location = '/path/to/complete-dict' 
let g:pydiction_location = '/home/您的使用者名稱/.vim/bundle/pydiction/complete-dict' 
let g:pydiction_menu_height = 3 
  if has("autocmd") 
    "autocmd FileType python set complete+=k/path/to/pydiction iskeyword+=.,( 
  	autocmd FileType python setlocal omnifunc=jedi#completions
  endif " has("autocmd") 
