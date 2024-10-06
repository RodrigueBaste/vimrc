" Handle plugins for vim
" Install plugins with :PlugInstall in vim
" Uninstall plugins with :PlugUninstall in vim
" Install server with :PlugInstallServer in file to work with
call plug#begin()
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

call plug#end()

" Reload a file when it is changed from the outside
set autoread

" Reload a file when it is changed from the outside
set autoread

" Display line number
set nu

" Enables syntax highlighting
syntax on

" Allow mouse use in vim
set mouse=a

" Highlight current line
set cursorline

" 4 space for indent
set shiftwidth=4
set softtabstop=4

" use autoindent
set autoindent

" -------------------------------------
" TEMPLATES FOR ABBREVIATION

" adding abbreviations to add templates
autocmd FileType c call SetupCSnippets()

function! SetupCSnippets()
    " Template for main function
    iabbrev <buffer> cmain int main(int argc, char *argv[])<CR>{<CR>	<CR>return 0;<CR>}<UP><UP>

    " Template for while loop
    iabbrev <buffer> cwhile while()<CR>{<CR>  <CR>}<UP><UP><UP><RIGHT><RIGHT><END><LEFT>

    " Template for for loop
    iabbrev <buffer> cfor for()<CR>{<CR>  <CR>}<UP><UP><UP><RIGHT><RIGHT><END><LEFT>

    " Template for if condition
    iabbrev <buffer> cif if()<CR>{<CR>  <CR>}<UP><UP><UP><RIGHT><RIGHT><END><LEFT>

endfunction

" adding abbreviation to add templates i sh
autocmd FileType sh call SetupSHSnippets()

function! SetupSHSnippets()

    "Template for shebang
    iabbrev <buffer> shShebang #!/bin/sh<CR><CR><LEFT>

endfunction

" ---------------------------------------
" AUTOCOMMANDS

" adding auto indentation for .html
:autocmd BufWritePre *.html :normal gg=G

" adding auto indentation for .py
:autocmd BufWritePre *.py :normal gg=G

" adding auto indentation for .c
:autocmd BufWritePre *.c :normal gg=G
