" Vim syntax file for bake Project.meta files
" Language: Bake 
" Maintainer: Nicola Coretti
" Latest Revision: 23 November 2013
" Contact: nico.coretti@googlemail.com

" checks whether a syntax is already defined for this file
if exists("b:current_syntax")
  finish
endif

" Supported toolchains are toolchains currently supported by bake to build
" Projects.
syn keyword BakeSupportedToolChains Diab GCC Keil CLANG GreenHills TI

" Supported compiler types 
syn keyword BakeSuportedCompilerTypes ASM CPP C

" A first level keyword is a keyword starts with an upper case letter 
" and opens it's own scope {}
syn keyword BakeFirstLevelKeyword Project Responsible ExecutableConfig LibraryConfig CustomConfig PreSteps PostSteps DefaultToolchain Compiler Archiver Linker Files Toolchain Makefile

" A second level keyword is a keyword starts with an upper case letter
" but does not open it's own scope
syn keyword BakeSecondLevelKeyword Person Flags Define LibPrefixFlags LibPostfixFlags IncludeDir LinkerScript MapFile ArtifactName Dependency ExternalLibrary UserLibrary ExternalLibrarySearchPath CommandLine ExcludeFiles 

" An option starts with an lower case letter and is usualy followed by a colon
" (:)
syn keyword BakeOptionKeywords email config search lib target pathTo default filter command

" A value keyword is a value wich can be used for an option, usulay it is
" limited set of values => true / false , on / off ...
syn keyword BakeValueKeywords on off true false
"
" Support special highlithing for todo's fixme's xxx's and notes
syn keyword BakeTodo contained TODO FIXME XXX NOTE Todo Fixme Xxx Note todo fixme xxx note

" Support of comment highlighting 
syn match BakeComment "#.*$" contains=BakeTodo

syn match BakeStringType '".*"'

"Ensure each scope is a region, needed to provide propper folding
syn region BakeFirstLevelKeywordBlock start="{" end="}" fold transparent 

" Todo's:
" 1. make colors work the right way         [DONE]
" 2. add support to hightlight strings ""


let b:current_syntax = "bake"
hi def link BakeTodo                     Todo
hi def link BakeComment                  Comment
hi def link BakeFirstLevelKeyword        Keyword
hi def link BakeSecondLevelKeyword       Identifier
hi def link BakeStringType               PreProc
hi def link BakeOptionKeywords           Type
hi def link BakeValueKeywords            Constant
hi def link BakeSupportedToolChains      Special
hi def link BakeSuportedCompilerTypes    PreProc

