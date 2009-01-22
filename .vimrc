set nocompatible
set backspace=indent,eol,start
set autoindent
set nobackup
set history=50
set ruler
set showcmd
set wrap
set sidescroll=10
set list
set listchars=tab:>-,trail:-
set cmdheight=3
set background=light
set report=0
set shm=filmnrwxt
set laststatus=2
set statusline+=%-3.3n\
set statusline+=%f\
set statusline+=%h%m%r%w
set statusline+=\[%{strlen(&ft)?&ft:'none'}
set statusline+=%=
set statusline+=%-14(%l,%c%V%)
set statusline+=%<%P
set wildmode=longest,list:full
set nohlsearch
set linebreak
set shiftround
set infercase
set browsedir=current
set smarttab
set wildignore=*.bak,*.o,*.e,*~ 
set confirm
set title
set novisualbell
set noerrorbells

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

colorscheme torte 


filetype plugin indent on

autocmd FileType text,perl setlocal tw=78 ts=4

if has("autocmd")
	 au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
	\| exe "normal g'\"" | endif
endif

augroup cprograms
	autocmd FileReadPost *.c :set cindent
	autocmd FileReadPost *.cpp :set cindent
	autocmd FileReadPost *.h :set cident
augroup END

augroup myfiletypes
	autocmd!
	autocmd FileType ruby,eruby,yaml set ai sw=2 sts=2 ts=2 tw=100
augroup END


map <F7> :set invnumber<CR>
