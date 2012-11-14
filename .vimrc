"
" ~/.vimrc (https://github.com/andrem/dotfiles.git)
"

set nocompatible
set novisualbell
set noerrorbells
set notitle
set nofoldenable
set autoindent
set nobackup
set history=50
set ruler
set showcmd
set wrap
set sidescroll=10
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

autocmd FileType ruby       set expandtab sw=2 ts=2 sts=2
autocmd FileType python     set expandtab sw=4 ts=4 sts=4
autocmd FileType tex        set expandtab tw=70
autocmd FileType perl       set expandtab ts=4 ts=4 sw=4 sts=4 tw=79

au BufNewFile *.html read ~/.vim/templates/html/skeleton.html
