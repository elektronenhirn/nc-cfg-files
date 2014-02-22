" Vim syntax file 
" Language: stm
" Maintianer: Nicola Coretti
" Contact: nicola.coretti@partner.esrlabs.com
" Latest Revision: 11 Dec 2013
"
" TODO: add syntax highligthing for code aware comments

if exists ("b:current_syntax")
    finish
endif

" Get even more fancy syntax highlighting
syn match stmTransition "\v-\>" 

" Define stm keyword groups based on notepad++ syntax file
syn keyword stmKeywordGroup1 namespace statemachine states events in: init safe time int
syn keyword stmKeywordGroup2 entry exit do context state tick maxtime

" Define todo's as syntax element
syn keyword todoKeywords contained todo ToDo TODO fixme Fixme FixMe FIXME xxx XXX note Note NOTE
" Line comment as syntax element
syn match stmComment "#.*$" contains=todoKeywords
"
" Define region(s) / in order to support syntax based folding
syn region stmBlock start="{" end="}" fold transparent

" todo: adjust => just highlight the braces not the content
syn region stmGuard start="\[" end="\]" 


" Map color to defined groups/sets
hi def link stmKeywordGroup1 Statement
hi def link stmKeywordGroup2 Identifier 
hi def link stmTransition Identifier
hi def link todoKeywords Todo
hi def link stmComment Comment
hi def link stmGuard Constant
