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
" License Abbreviations
"========================================================= 
iab Apybsd 
\<CR># Copyright (c) <YEAR>, <OWNER>
\<CR># All rights reserved.
\<CR>#
\<CR># Redistribution and use in source and binary forms, with or without modification, 
\<CR># are permitted provided that the following conditions are met:
\<CR>#
\<CR># * Redistributions of source code must retain the above copyright notice, 
\<CR>#   this list of conditions and the following disclaimer.
\<CR>#
\<CR># * Redistributions in binary form must reproduce the above copyright notice, this 
\<CR>#   list of conditions and the following disclaimer in the documentation and/or other 
\<CR>#   materials provided with the distribution.
\<CR>#
\<CR># * Neither the name of the <ORGANIZATION> nor the names of its contributors may be used 
\<CR>#   to endorse or promote products derived from this software without specific prior written permission.
\<CR>#
\<CR># THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
\<CR># INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
\<CR># DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
\<CR># INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
\<CR># SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND 
\<CR># ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
\<CR># ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

iab Acbsd 
\<CR>Copyright (c) <YEAR>, <OWNER>
\<CR>// All rights reserved.
\<CR>// 
\<CR>// Redistribution and use in source and binary forms, with or without modification, 
\<CR>// are permitted provided that the following conditions are met:
\<CR>// 
\<CR>// * Redistributions of source code must retain the above copyright notice, 
\<CR>//   this list of conditions and the following disclaimer.
\<CR>// 
\<CR>// * Redistributions in binary form must reproduce the above copyright notice, this 
\<CR>//  list of conditions and the following disclaimer in the documentation and/or other 
\<CR>//  materials provided with the distribution.
\<CR>//
\<CR>// * Neither the name of the <ORGANIZATION> nor the names of its contributors may be used 
\<CR>//   to endorse or promote products derived from this software without specific prior written permission.
\<CR>// 
\<CR>// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,
\<CR>// INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE 
\<CR>// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, 
\<CR>// INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
\<CR>// SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND 
\<CR>// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
\<CR>// ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
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
