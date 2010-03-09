set nocompatible
syntax on
filetype plugin indent on
compiler ruby

set hlsearch
set number
set showmatch
set incsearch
set background=dark
set hidden
set backspace=indent,eol,start
set textwidth=0 nosmartindent tabstop=2 shiftwidth=2 softtabstop=2 expandtab
set ruler
set dir=/tmp//

let html_use_css=1
let html_number_lines=0

let clj_want_gorilla = 1
let g:clj_highlight_builtins = 1
let g:clj_highlight_contrib = 1
let g:clj_paren_rainbow = 1 

let g:gist_clip_command = 'pbcopy'
let g:gist_detect_filetype = 1

let g:rubycomplete_buffer_loading = 1

let g:fuzzy_ceiling = 50000

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4

autocmd FileType tex setlocal textwidth=78
autocmd BufNewFile,BufRead *.txt setlocal textwidth=78


autocmd FileType ruby runtime ruby_mappings.vim
map <silent> <LocalLeader>cj :!clj %<CR>
map <silent> <LocalLeader>rt :!ctags -R --exclude=".git\|.svn\|log\|tmp\|db\|pkg" --extra=+f<CR>
map <silent> <LocalLeader>nt :NERDTreeToggle<CR>
map <silent> <LocalLeader>nr :NERDTree<CR>
map <silent> <LocalLeader>ff :FuzzyFinderTextMate<CR>
map <silent> <LocalLeader>ft :FuzzyFinderTag<CR>
map <silent> <LocalLeader>fb :FuzzyFinderBuffer<CR>
map <silent> <LocalLeader>nh :nohls<CR>
map <LocalLeader>aw :Ack <C-R><C-W> 
map <silent> <LocalLeader>sd :VCSDiff<CR>
map <silent> <LocalLeader>sb :VCSBlame<CR>
map <silent> <LocalLeader>sl :VCSLog<CR>
map <silent> <LocalLeader>sr :VCSRevert<CR>
map <silent> <LocalLeader>gd :e product_diff.diff<CR>:%!git diff<CR>:setlocal buftype=nowrite<CR>
map <silent> <LocalLeader>pd :e product_diff.diff<CR>:%!svn diff<CR>:setlocal buftype=nowrite<CR>

if version >= 700
    autocmd BufNewFile,BufRead *.txt setlocal spell spelllang=en_us
    autocmd FileType tex setlocal spell spelllang=en_us
endif

