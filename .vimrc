nnoremap gn :tabn<CR>
nnoremap gp :tabp<CR>
nnoremap gc :tabc<CR>
map <C-p> "+p
map <C-y> "+y
set rnu
set nu
set tabstop=4      " Number of spaces that a <Tab> in the file counts for
set shiftwidth=4   " Number of spaces to use for each step of (auto)indent
set expandtab      " Use spaces instead of tabs
set softtabstop=4  " Number of spaces that a <Tab> counts for while performing editing operations
set autoindent
set smartindent

let g:sql_type_default = 'yql'
au BufRead,BufNewFile *.yql set filetype=yql
au BufRead,BufNewFile *.yqls set filetype=yqls

" set listchars=trail:$
" set list
