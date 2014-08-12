"=========================================================
" .vimrc
" Autor: Nicola Coretti
" Contact: nico.coretti@googlemail.com
" Version: 0.1
"

"========================================================= 
" Plugins
"========================================================= 
runtime plugin/gtags.vim
runtime bundle/pathogen/autoload/pathogen.vim
" infect vim ;)
execute pathogen#infect()


"=========================================================
" Settings 
"=========================================================
" change color scheme
"colors ir_black
" set up omni-completion
filetype plugin on
set ofu=syntaxcomplete#Complete

" Activate syntax-highlighting
 syntax enable

" Highlighting search
 set hlsearch

" automatically adjust cwd to dir in which the file which is edited is located
set autochdir

" background: Is a "light" or "dark" background used?
 set background=dark

" The error bell
 set noerrorbells

" No tabs (use the appropriate number of spaces for a tab)
 set expandtab

" Allow "hidden" buffers
 set hidden

" Status line
 set laststatus=2

" Show the column an row number of the ruler
 set ruler

" Highlights the current cursor line
set cursorline

" Show mode of the cursor (color)
 set showmode

" customize the status line
 set statusline=Buffer[%n]\ File:%F%=ASCII-Value:hex(0x%02B),dez(%03b)\ Position:%l,%-4c\ --%P--

" set the number of spaces a tab stop use
 set tabstop=4

" show the linenumbers
 set number

" show the active mode
 set showmode
" disable case-sensitivity for searches
 set ignorecase

" Make the mouse usable in Vim (in all modes)
 set mouse=a

"look in the current directory for "tags", and work up the tree
"towards root until one is found. 
set tags=tags;/

" smart ident safter linebreak
"set smartindent

" activate backup
set backup
set backupdir=~/.tmp

set wildmenu

"=========================================================
" Abbreviations
"=========================================================

" TODO marker
  iab Atd TODO:

" Section separator
 iab Asep =========================================================

" Small Section seperator 1
 iab Aseps1 ####################

" Small Section seperator 2
 iab Aseps2 ********************

" The lower letter alphabet
 iab Aalpha abcdefghijklmnopqrstuvwxyz

" The upper letter alphabet
 iab AALPHA ABCDEFGHIJKLMNOPQRSTUVWXYZ

" The ten digits
 iab Adigit 1234567890

" Important constants
 iab Api 3.1415926535897932384626433832795028841972
 iab Ae 2.7182818284590452353602874713526624977573

"========================================================= 
" Python Abbreviations
"=========================================================
iab Apymodule  
\#!/usr/bin/python
\<CR># -*- coding: utf-8 -*-
\<CR>'''
\<CR>This module contains -------
\<CR>
\<CR>    Exports:
\<CR>    Constants:            -
\<CR>    Functions:            -
\<CR>    Classes:              -
\<CR>    Exceptions:           -
\<CR>    Decorators:           -
\<CR>        
\<CR>@author: Nicola Coretti
\<CR>@contact: 
\<CR>@version: 
\<CR>'''
\<CR>__all__ = []
\<CR>
\<CR># Python imports
\<CR>
\<CR># Logger setup
\<CR>
\<CR># -- Module Constants ---------------------------------------------------------
\<CR># -- Module Functions ---------------------------------------------------------
\<CR># -- Module Classes -----------------------------------------------------------
\<CR># -- Module Decorators ---------------------------------------------------------
\<CR># -- Module Exceptions --------------------------------------------------------

iab Apyheader 
\<CR>#!/usr/bin/python
\<CR># -*- coding: utf-8 -*-
\<CR>"""
\<CR><module description>
\<CR>
\<CR>@author: Nicola Coretti
\<CR>@contact: nico.coretti@googlemail.com
\<CR>@version: <x.y.z> 
\<CR>"""
\<CR>__all__ = []

"=========================================================
" Mappings
"=========================================================
" Refine leader 
let mapleader = ","

"**************************************** 
" Normal-Mode Mappings
"**************************************** 
" Open .vimrc
nnoremap <Leader>v :vsplit $MYVIMRC<CR> 
" Toggle Nerd-Tree 
nnoremap <Leader>n :NERDTree<CR>
"set spell checking language to american english
nnoremap <Leader>e :set spell spelllang=en_us<CR>
"set spell checking language to german 
nnoremap <Leader>d :set spell spelllang=de_de<CR>
"toggle spell checking
nnoremap <Leader>s :set spell!<CR>
"toggle highlighted search 
nnoremap <Leader>h :set hlsearch!<CR>
" toggle use whitespaces insted of tabs
nnoremap <Leader>w :set expandtab!<CR>
" Toggle Tagbar
nnoremap <Leader>o :TagbarToggle<CR>
" Run Astyle on current file
nnoremap <Leader>f :!astyle % <CR>

" *********** HexEditor - Stuff ***********
" Enable Hex-Editor-Mode
nnoremap <Leader>X :%!xxd <CR>
" Enable Hex-Editor-Mode
nnoremap <Leader>x :%!xxd -r <CR>
" toggle binary mode  (used to save files without newline)
nnoremap <Leader>b set binary! <CR>

" *********** Global (Gtags) integration ***********
" go to the referenced point of <cword>
nnoremap <Leader>r :Gtags -r <C-R>=expand("<cword>")<CR><CR>
" locate symbol <cword> which are not defined in GTAGS 
nnoremap <Leader>s :Gtags -s <C-R>=expand("<cword>")<CR><CR>
" locate string(s) <cword>
nnoremap <Leader>g :Gtags -g <C-R>=expand("<cword>")<CR><CR>
" get a list of objects of the current file
nnoremap <Leader>f :Gtags <C-R>=expand("<cfile>")<CR><CR>
" go to definition of <cword>
nnoremap <Leader>i :GtagsCursor<CR>
" create symbol file / should be called with pwd at project level
nnoremap <Leader>c :!gtags  -w <CR>

"**************************************** 
" Visual-Mode Mappings
"**************************************** 
" Soround selected visual block with ""
vnoremap <Leader>" ox<esc>i"<esc>pa"




