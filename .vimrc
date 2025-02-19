set number nowrap cursorline
set tabstop=4 shiftwidth=4 expandtab
set autoindent smartindent 
set incsearch
set noerrorbells

syntax on
filetype plugin on

" use ESC to get out of Vim Terminal
tnoremap <ESC> <C-\><C-n>

" colorscheme setup and fallbacks
set background=dark
try
    colorscheme wildcharm
catch
    try
        colorscheme darkblue
    catch
        " If neither colorscheme is available, reset to default
        highlight clear
        if exists("syntax_on")
            syntax reset
        endif
    endtry
endtry
