" Vim syntax file
" Language:     Lc-3
" Author:       Qi Li
" Last Change:  2018 May 2

syn keyword  binDataMove    LD LDR LDI ST STR STI LEA contained
syn keyword  binCalculate   AND ADD NOT contained
syn keyword  binCondition   BR BRn BRz BRp BRnz BRzp BRnp BRnzp contained
syn keyword  binSystem      TRAP contained
syn match  binRegister      "R[0-7]" display contained
syn match  binHexNumber     "\<[xX]\x*" display contained
syn match  binDecNumber     "#-\?\d*" display contained
syn match  binBinNumber     "[01]\{8}" display contained
syn match  binComment       ";.*$" contains=binDataMove,binCalculate,binCondition,binSystem,binRegister,binHexNumber,binDecNumber,binBinNumber,binEight
syn match  binStart     "\<[01]\{4}\>"
syn match  binAddress   "^x\x\{4}\>"
syn match  binReg       "\<[01]\{3}\>"
syn match  binBaseOffset "\<[01]\{3} [01]\{6}\>" 
syn match  binPCOffset  "\<[01]\{9}\>" 
syn match  binImm       "\<1 [01]\{5}\>"
syn match  binEight     "\<[01]\{8}\>"


hi def link binDataMove     Operator
hi def link binCalculate    String
hi def link binCondition    Define
hi def link binSystem       Special
hi def link binComment      Comment
hi def link binRegister     Identifier
hi def link binHexNumber    Number
hi def link binDecNumber    Number
hi def link binBinNumber    Number
hi def link binAddress      Operator
hi def link binStart        String
hi def link binReg          Identifier
hi def link binPCOffset     Conditional
hi def link binBaseOffset   Conditional
hi def link binImm          String
hi def link binEight        String

