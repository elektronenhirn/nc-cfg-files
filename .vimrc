"=========================================================
" .vimrc
" Autor: Nicola Coretti
" Contact: nico.coretti@googlemail.com
" Version: 0.1
"
"
"=========================================================
" Settings 
"=========================================================

" Activate syntax-highlighting
 syntax enable

" Highlighting search
 set hlsearch

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

" Show mode of the cursor (color)
 set showmode

" customize the status line
 set statusline=Buffer[%n]\ File:%F\ \ Position:%l,%c\ \ ASCII-Value:hex(0x%B),dez(%b)\ \%P

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
" Mappings
"=========================================================

"Spell checking settings
"set F2 to enable English spell checking (American English)
map <F2> :set spell spelllang=en_us<CR>
"set F3 to enable German spell checking 
map <F3> :set spell spelllang=de_de<CR>
"set F4 to disable spell checking
map <F4> :set nospell<CR>

"highlighted search settings
"set F5 to enable highlighted search
map <F5> :set hlsearch<CR>
"set F6 to disable highlighted search
map <F6> :set nohlsearch<CR>

" do not use whitespaces insted of tabs
map <F7> :set noexpandtab<CR>

" use whitespace insted of tabs
map <F8> :set expandtab<CR>
