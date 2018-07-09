" Vim syntax file for serpent 2 (not sure if all keywords are in serp 1)
" Language: Serpent Input file
" Maintainer: Gavin Ridley, Travis Labossiere-Hickman
" Latest Rev: Jul 11, 2017
" ***utterly plagiarized from the python.vim syntax file***
"
" TODO: not all 'set' options are included

if exists("b:current_syntax")
	finish
endif


" comments, TODO's , and quotes
syn match   serpComment	"%.*$" contains=serpTodo,@Spell
syn region  serpComment start="/\*" end="\*/"
syn keyword serpTodo FIXME NOTE TODO XXX contained
syn region  serpString matchgroup=serpQuotes
      \ start=+[uU]\=\z(['"]\)+ end="\z1" skip="\\\\\|\\\z1"
      \ contains=serpEscape,@Spell


" detects numbers
syn match   serpNumber	"\<0[oO]\=\o\+[Ll]\=\>"
syn match   serpNumber	"\<0[xX]\x\+[Ll]\=\>"
syn match   serpNumber	"\<0[bB][01]\+[Ll]\=\>"
syn match   serpNumber	"\<\%(\d*\|0\)[eE]\{0,1\}[Ll]\=\>"

" detects ZAID nuclear data libraries
syn match   serpIsotope "\d*\.\d\dc"
" detects thermal scattering data libraries
syn match   serpScatter "\(lwtr\|hwtr\|grph\)\.\d\dt"

" built in valid parameters to set
syn keyword serpSet acelib adf alb arr bc blockdt bralib ccmaxiter ccmaxpop
			\ coefpara comfile confi csw declib delnu depout
			\ dfsol dynsrc dt entr fill fininitfile fissh forcedt
			\ fsp fum gbuf gcu gcut his impl inventory isobra
			\ lost mcvol micro memfrac minxs mvol nbuf nfg nfylib
			\ nphys nps outp poi pop ppid ppw relfactor rfr rfw rgb
			\ root sacesrc seed spd sfylib title tcut tpa transnorm
			\ trc ures usym opti power pcc dx dy dz ene dr

" some other statements
syn keyword serpStatement branch cell coef det div ftrans fun ifc lat mat mesh
			\ particle pin plot solid src strans surf therm thermstoch
			\ tme trans transv transa utrans wwgen wwin set

" geometry
syn keyword serpGeom sqc px py pz plane cylx cyly cylz cyl cylv sph cone quadratic
			\ inf tox toy torz rect hexxc hexyc hexxprism hexyprism octa dode
			\ cube cuboid ppd pad cross gcross usr

syn keyword serpPreproc include

let b:current_syntax = "serp"
hi def link serpStatement Statement
hi def link serpSet       Special
hi def link serpNumber    Number
hi def link serpString    String
hi def link serpTodo      Todo
hi def link serpComment   Comment
hi def link serpPreproc   PreProc
hi def link serpGeom      Identifier
hi def link serpIsotope   Type
hi def link serpScatter   Type

