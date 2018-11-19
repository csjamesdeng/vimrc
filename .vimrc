""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author    : james
" Date      : 2012-03-15
" Version   : 0.1.0
" History   : 2012-03-15    Create
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Function
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! MySys()
  if has("win32")
    return "win32"
  elseif has("unix")
    return "unix"
  else
    return "mac"
  endif
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Get out of VI's compatible mode...
set nocompatible

" Set shell to bash
if MySys() == "unix" || MySys() == "mac"
  set shell=bash
else
  set shell=E:cygwinsh
endif

" Sets how many lines of history VIM har to remember
set history=512

" Show line number
set nu

" Sets mouse active
set mouse=a

" Always show current position
set ruler

" No backup
set nobackup

" Always show statuslin
set laststatus=2

set cursorline
set wildmenu


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Color and Font
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme darkblue


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => File
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set default filetype
set ffs=unix,dos,mac

" File encoding
set encoding=utf-8
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=

" Enable filetype plugin
filetype on
filetype plugin on
filetype indent on
autocmd FileType python setlocal et sta sw=4 sts=4

" Sets Text, Tab and indent
"set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set ai
set si
set cindent

" Set syntax on
syntax enable

" When editing a file, always jump to the last known cursor position.     
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).                                 
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.                                           
autocmd BufReadPost *                                                     
  \ if line("'\"") > 1 && line("'\"") <= line("$") |                      
  \   exe "normal! g`\"" |                                                
  \ endif                                                                 

" Ignore case when searching
set ignorecase

" Highlight search things
set hlsearch
  
" Make search act like search in modern browers
set incsearch

" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Useful Map
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Show calendar
map ca :Calendar<cr>

" Fast saving
map ss :w<cr>

" Fast quit
map qq :q<cr>
map qa :qa<cr>

" Tag navigation
map tn :tnext<cr>
map tp :tprevious<cr>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Mini buffer explorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:miniBufExplUseSingleClick = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => TlistToggle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Auto_Highlight_Tag=1
" let Tlist_Auto_Open=1
let Tlist_Exit_OnlyWindow=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Highlight_Tag_On_BufEnter=1
let Tlist_Show_One_File=1
let Tlist_Use_Right_Window=1
let Tlist_Use_SingleClick=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Grep
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F3> :Grep<CR> 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => BufExplorer
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerSortBy='mru'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => winmanager
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F8> :WMToggle<CR>
map <c-w><c-t> :WMToggle<cr> 
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
let g:winManagerWindowLayout="TagList|BufExplorer"
let g:persistentBehaviour=0
let g:winManagerWidth=30
let g:defaultExplorer=0


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ctags
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tags=tags;
set autochdir


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <F4> :NERDTree<CR>
let NERDTreeIgnore=['.*\.o$','.*\.ko$']

