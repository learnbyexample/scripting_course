" ----- General Settings -----
" Use Vim defaults, not Vi
set nocompatible
" history limit
set history=100
" Don't create backup files
set nobackup
" Don't create swap files
set noswapfile
" Dark theme
colorscheme murphy

" ----- Text and Indent Settings -----
" Max no. of characters in single line
set textwidth=80
" use file type based Indent setting
filetype plugin indent on
" number of characters to indent by
set shiftwidth=4
" No. of characters for Tab key
set tabstop=4
" Set Tab character to expand as spaces
set expandtab
" highlight current line
set cursorline

" ----- Search Settings -----
" start searching as it is typed
set incsearch
" Highlight search patterns
set hlsearch
" search visually selected text
vnoremap * y/<C-R>"<CR>
vnoremap # y?<C-R>"<CR>
" always use magic mode
nnoremap / /\v
nnoremap ? ?\v
" clear highlighted search text until next explicit search or n/N
" <silent> - so as to not print :noh on last line when pressing space
nnoremap <silent> <Space> :noh<CR><Space>

" ----- Custom Mappings -----
" Map F2 key to save file in command mode
nnoremap #2 :w<CR>
" Map F2 key to save file in insert mode
inoremap <F2> <Esc>:w<CR>a
" Map F3 key to save and quit file in command mode
nnoremap #3 :wq<CR>
" Map F4 key to clear file contents in command mode
nnoremap #4 ggdG
" Map F5 key to copy entire contents of file to clipboard
nnoremap #5 gg"+yG

" ----- Abbreviations -----
" Expand p as below when it is used as a word
" #!/usr/bin/perl
" use strict;
" use warnings;
iab p #!/usr/bin/perl<CR>use strict;<CR>use warnings;<CR>
" py2 for python
iab py2 #!/usr/bin/python
" py for python3
iab py #!/usr/bin/python3
" auto correct teh as the
iab teh the
" type @a in insert mode and press Esc key
iab @a always @()<CR>begin<CR>end<Esc>2k$
" type @i in insert mode and press Esc key
iab @i if ()<CR>begin<CR>end<Esc>2k$
" type @e in insert mode and press Esc key
iab @e else ()<CR>begin<CR>end<Esc>2k$
" type @I in insert mode and press Esc key
iab @I if ()<CR>begin<CR>end<CR>else<CR>begin<CR>end<Esc>5k$

" ----- autocmd -----
" Prevent comment character leaking to next line in Perl, C, etc
autocmd FileType * setlocal formatoptions-=r
" no text width limit whenever working HTML file
autocmd BufNewFile,BufRead *.html setlocal tw=0
" automatically add Perl path using previously set iab for p
autocmd BufNewFile *.pl :normal ip
" automatically add Python path
autocmd BufNewFile *.py :normal ipy

" ----- Useful Verilog Settings -----
" Add some keyword pairs to be matched by % similar to (), {}, etc
runtime macros/matchit.vim
let b:match_words =
                    \ '\<module\>:\<endmodule\>,' .
                    \ '\<begin\>:\<end\>,' .
                    \ '\<if\>:\<else\>'
" Allows to use gf on module names
set suffixesadd+=.v,.V,.sv,.SV
" Useful for opening modules from different hierarchies
"set path+=/path1/,/path2/,etc
