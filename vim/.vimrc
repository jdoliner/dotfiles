set nocompatible               " be iMproved
filetype off                   " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/Vundle.vim'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'johnsyweb/vim-makeshift.git'
Bundle 'mattn/emmet-vim'
Plugin 'mileszs/ack.vim'
Bundle 'scrooloose/syntastic'
Bundle 'rking/ag.vim'
Plugin 'reedes/vim-pencil'
Plugin 'vimoutliner/vimoutliner'
Plugin 'elmcast/elm-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'habamax/vim-godot'
" Plugin 'davidhalter/jedi-vim'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'morhetz/gruvbox'
" non github repos
Bundle 'fatih/vim-go'
" ...
"
call vundle#end()            " required
filetype plugin indent on    " required!

set background=dark
colors gruvbox
let mapleader = ","
set nu!
set cin!
set shiftwidth=4
set tabstop=4
set expandtab
syn on
set tags+=.tags
set viminfo='100,f1
set hlsearch
set backspace=indent,eol,start
noremap <silent> <Space> :nohlsearch<Bar> :echo<CR>
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
let @a='ds('
set switchbuf=usetab

au FileType make setl noet

"set nocp
"filetype plugin on


hi ShowMarksHLl guifg=red guibg=green
hi ShowMarksHLu guifg=red guibg=green
hi ShowMarksHLo guifg=red guibg=green
hi ShowMarksHLm guifg=red guibg=green

noremap <C-b> :TlistToggle<CR>

:ab #i #include
:ab #d #define
:ab consterator const_iterator

noremap <leader>f :let @"=@%<CR>

let g:fuf_modesDisable = []
let g:fuf_mrufile_maxItem = 400
let g:fuf_mrucmd_maxItem = 400
nnoremap <silent> <special> <C-\>b     :FufBuffer<CR>
nnoremap <silent> <special> <C-\>f     :FufFileWithCurrentBufferDir<CR>
nnoremap <silent> <special> <C-\>F     :FufFileWithFullCwd<CR>
nnoremap <silent> <special> <C-\><C-f> :FufFile<CR>
nnoremap <silent> <special> <C-\>v     :FufCoverageFile<CR>
nnoremap <silent> <special> <C-\>l     :FufCoverageFileChange<CR>
nnoremap <silent> <special> <C-\>L     :FufCoverageFileChange<CR>
nnoremap <silent> <special> <C-\><C-l> :FufCoverageFileRegister<CR>
nnoremap <silent> <special> <C-\>d     :FufDirWithCurrentBufferDir<CR>
nnoremap <silent> <special> <C-\>D     :FufDirWithFullCwd<CR>
nnoremap <silent> <special> <C-\><C-d> :FufDir<CR>
nnoremap <silent> <special> <C-\>n     :FufMruFile<CR>
nnoremap <silent> <special> <C-\>N     :FufMruFileInCwd<CR>
nnoremap <silent> <special> <C-\>m     :FufMruCmd<CR>
nnoremap <silent> <special> <C-\>u     :FufBookmarkFile<CR>
nnoremap <silent> <special> <C-\><C-u> :FufBookmarkFileAdd<CR>
vnoremap <silent> <special> <C-\><C-u> :FufBookmarkFileAddAsSelectedText<CR>
nnoremap <silent> <special> <C-\>i     :FufBookmarkDir<CR>
nnoremap <silent> <special> <C-\><C-i> :FufBookmarkDirAdd<CR>
nnoremap <silent> <special> <C-\>t     :FufTag!<CR>
nnoremap <silent> <special> <C-\>T     :FufTag<CR>
nnoremap <silent> <special> <C-\><C-]> :FufTagWithCursorWord!<CR>
nnoremap <silent> <special> <C-\>,     :FufBufferTag!<CR>
nnoremap <silent> <special> <C-\><     :FufBufferTag<CR>
vnoremap <silent> <special> <C-\>,     :FufBufferTagWithSelectedText!<CR>
vnoremap <silent> <special> <C-\><     :FufBufferTagWithSelectedText<CR>
nnoremap <silent> <special> <C-\>}     :FufBufferTagWithCursorWord!<CR>
nnoremap <silent> <special> <C-\>.     :FufBufferTagAll<CR>
nnoremap <silent> <special> <C-\>>     :FufBufferTagAll!<CR>
vnoremap <silent> <special> <C-\>.     :FufBufferTagAllWithSelectedText!<CR>
vnoremap <silent> <special> <C-\>>     :FufBufferTagAllWithSelectedText<CR>
nnoremap <silent> <special> <C-\>]     :FufBufferTagAllWithCursorWord!<CR>
nnoremap <silent> <special> <C-\>g     :FufTaggedFile<CR>
nnoremap <silent> <special> <C-\>G     :FufTaggedFile!<CR>
nnoremap <silent> <special> <C-\>o     :FufJumpList<CR>
nnoremap <silent> <special> <C-\>c     :FufChangeList<CR>
nnoremap <silent> <special> <C-\>q     :FufQuickfix<CR>
nnoremap <silent> <special> <C-\>y     :FufLine<CR>
nnoremap <silent> <special> <C-\>h     :FufHelp<CR>
nnoremap <silent> <special> <C-\>e     :FufEditDataFile<CR>
nnoremap <silent> <special> <C-\>r     :FufRenewCache<CR>


" RSI (stands for "retained surgical instruments")
au FileType cpp,c syn keyword cTodo RSI
com RSI grep '\<RSI\>' **/*

match Todo /\s\+$/

syntax match cpp 'std_contains' conceal cchar=∋

func! WordProcessorMode()
  setlocal formatoptions=t1
  setlocal textwidth=80
  map j gj
  map k gk
  setlocal smartindent
  setlocal spell spelllang=en_us
  setlocal noexpandtab
endfu
com! WP call WordProcessorMode()

set ruler
au BufRead,BufNewFile *.elm set filetype=elm

let g:haddock_browser="/usr/bin/lynx"

set rtp+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

au FileType go nmap <leader>t <Plug>(go-test)

set number
set relativenumber
let g:syntastic_go_checkers = ['go']
let g:syntastic_cpp_checkers = ['gcc']
let g:syntastic_cpp_clang_exec = '/usr/bin/clang'

nnoremap <silent> <special> <C-\>s     :SyntasticSetLoclist<CR>

set incsearch

let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_operators = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_variable_declarations = 1
let g:go_highlight_variable_assignments = 1
let g:go_highlight_diagnostic_errors = 1
let g:go_highlight_diagnostic_warnings = 1
