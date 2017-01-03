" Vim syntax file for serpent 2 (not sure if all keywords are in serp 1)
" Language: Serpent Input file
" Maintainer: Gavin Ridley
" Latest Rev: Dec 21, 2016
" ***utterly plagiarized from the python.vim syntax file***
"
" TODO: make nuclear data libraries look good <- requires a good regex
" TODO: not all 'set' options are included

if exists("b:current_syntax")
	finish
endif


" comments, TODO's , and quotes
syn match   serpComment	"%.*$" contains=serpTodo,@Spell
syn keyword serpTodo FIXME NOTE TODO XXX contained
syn region  serpString matchgroup=serpQuotes
      \ start=+[uU]\=\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1"
      \ contains=serpEscape,@Spell


" detects numbers
syn match   serpNumber	"\<0[oO]\=\o\+[Ll]\=\>"
syn match   serpNumber	"\<0[xX]\x\+[Ll]\=\>"
syn match   serpNumber	"\<0[bB][01]\+[Ll]\=\>"
syn match   serpNumber	"\<\%([1-9]\d*\|0\)[Ll]\=\>"

" detects ZAID nuclear data libraries
syn match   serpIsotope "[0-9]*\.0[369]c"

" built in valid parameters to set
syn keyword serpSet acelib adf alb arr bc blockdt bralib ccmaxiter ccmaxpop
			\ coefpara comfile confi csw declib delnu depout
			\ dfsol dynsrc dt entr fininitfile fissh forcedt
			\ fsp fum gbuf gcu gcut his impl inventory isobra
			\ lost mcvol micro memfrac minxs mvol nbuf nfg nfylib
			\ nphys nps outp poi pop ppid ppw relfactor rfr rfw
			\ root sacesrc seed spd sfylib title tcut tpa transnorm
			\ trc ures usym opti power pcc dx dy dz ene dr

" some other statements
syn keyword serpStatement branch cell coef det div ftrans fun ifc lat mat mesh
			\ particle pin plot solid src strans surf therm thermstoch
			\ tme trans transv transa utrans wwgen wwin set

syn keyword serpPreproc include

let b:current_syntax = "serp"
hi def link serpStatement Statement
hi def link serpSet       Special
hi def link serpNumber    Number
hi def link serpString    String
hi def link serpTodo      Todo
hi def link serpComment   Comment
hi def link serpPreproc   PreProc
hi def link serpIsotope   String
