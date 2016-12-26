# serpent2vimsyntax
This repo contains a syntax file for vim to highlight  input files for the reactor physics code Serpent 2 from VTT.

Right now, this is only tested on a linux OS.

Wondering what Serpent 2 is? http://montecarlo.vtt.fi/

## How to install
1. Copy the serp.vim file into either ~/.vim/syntax or \<vim_install_directory>/syntax
2. Make another file called serp.vim in ~/.vim/ftdetect
3. add this single line in the new serp.vim file:

    `au BufRead,BufNewFile *.serp set filetype=serp`
    
    `au BufRead,BufNewFile *.<whatever serpent file extension you want> set filetype=serp`
    
4. Voila! Files ending in ".serp" will have highlighted serpent syntax.
    
## Preview:

![preview!](preview.png "Title")

    
