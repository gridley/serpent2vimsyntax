" Vim filetype file for Serpent 2
" Language: Serpent Input file
" Maintainer: Gavin Ridley, Travis Labossiere-Hickman
" Latest Rev: Aug 28, 2018
" 
" Protecting with a group
augroup serp_auto_setfiletype
    autocmd!
    " Set files with *.serp to be Serpent 2 files
    au BufRead,BufNewFile *.serp set filetype=serp
augroup END

