" Vim syntax file
" Language:     Assembly for Lc-3
" Author:       Qi Li
" Last Change:  2018 May 2

syn keyword  asmDataMove    LD LDR LDI ST STR STI LEA 
syn keyword  asmCalculate   AND ADD NOT 
syn keyword  asmCondition   BR BRn BRz BRp BRnz BRzp BRnp BRnzp 
syn keyword  asmSystem      TRAP 
syn match  asmRegister      "R[0-7]" 
syn match  asmHexNumber     "\<[xX]\x*"
syn match  asmDecNumber     "#-\?\d*" 
syn match  asmBinNumber     "[01]\{8}"
syn match  asmComment       ";.*$"


hi def link asmDataMove     Operator
hi def link asmCalculate    String
hi def link asmCondition    Define
hi def link asmSystem       Special
hi def link asmComment      Comment
hi def link asmRegister     Identifier
hi def link asmHexNumber    Number
hi def link asmDecNumber    Number
hi def link asmBinNumber    Number
