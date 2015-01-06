set nocompatible
filetype off                   " required!
filetype plugin indent on     " required!
syntax on
set encoding=utf-8
if has("gui_running")
	set guifont=Monaco:h13
	set guioptions-=r
	set guioptions-=L
    set transparency=10
endif

set backspace=2 " make backspace work like most other app

if has("mouse")
    set mouse=a
endif

" Folding
nnoremap <Space> za
set foldmethod=indent
au BufWinEnter * normal zR

"indent guides shows when vim startup
let g:indent_guides_enable_on_vim_startup = 1

"vimrc access and automatic source
nmap <leader>vim :e ~/.vimrc<cr>
nmap <expr> go '/^' . nr2char(getchar()) . '<CR>'
autocmd! bufwritepost .vimrc source %

"search

set smartcase
set ignorecase
set incsearch
" set hls
" nnoremap <CR> :noh<CR>
cmap <C-n> <CR>n/<C-p>

imap jj <Esc>
set autoindent
set tabstop=4
set shiftwidth=4


set cursorline
set cursorcolumn
hi CursorLine   cterm=NONE ctermbg=237 guibg=#3A3A3A
hi CursorColumn cterm=NONE ctermbg=237  guibg=#3A3A3A


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'itchyny/lightline.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'suan/vim-instant-markdown'
Plugin 'kien/ctrlp.vim'
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'
Plugin 'tpope/vim-haml'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-ruby/vim-ruby'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-unimpaired'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'tpope/vim-repeat'
Plugin 'kchmck/vim-coffee-script'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-surround'
Plugin 'nono/vim-handlebars'
Plugin 'regedarek/ZoomWin'
Plugin 'benmills/vimux'
Plugin 'junegunn/vim-easy-align'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Raimondi/delimitMate'
Plugin 'othree/html5.vim'
" # end of the github repo

" vim-scripts repos
Plugin 'DrawIt'
Plugin 'tComment'
Plugin 'sudo.vim'
"vi sudo:/etc/passwd

call vundle#end()

"Plugin 'jelera/vim-javascript-syntax'
 au FileType javascript call JavaScriptFold()

"Plugin 'itchyny/lightline.vim'
let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }
set laststatus=2

"Plugin 'scrooloose/nerdtree'
nmap 99 :NERDTreeToggle<CR>

"Plugin 'majutsushi/tagbar'
nmap 88 :TagbarToggle<CR>

"Plugin 'nanotech/jellybeans.vim'
colorscheme jellybeans

"Plugin 'kien/ctrlp.vim'
nmap <silent> <leader>] :CtrlPMixed<cr>
let g:ctrlp_working_path_mode = 0

"Plugin 'Valloric/YouCompleteMe'
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0

"Plugin 'kchmck/vim-coffee-script'
"Two-space indentation
au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
"fold by indentation
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

if executable('coffeetags')
  let g:tagbar_type_coffee = {
        \ 'ctagsbin' : 'coffeetags',
        \ 'ctagsargs' : '--include-vars',
        \ 'kinds' : [
        \ 'f:functions',
        \ 'o:object',
        \ ],
        \ 'sro' : ".",
        \ 'kind2scope' : {
        \ 'f' : 'object',
        \ 'o' : 'object',
        \ }
        \ }
endif

"Plugin 'tpope/vim-surround'
nmap '' ysiw'
nmap "" ysiw"

"Plugin 'benmills/vimux'
map <Leader>rb :call VimuxRunCommand("clear;")<CR>
map <Leader>p :VimuxPromptCommand<CR>
map <Leader>rb :call VimuxRunCommand("clear;")<CR>
map <Leader>rl :VimuxRunLastCommand<CR>
map <Leader>rs :VimuxInterruptRunner<CR>
let g:VimuxHeight = "35"
let g:VimuxOrientation = "h"

"Plugin 'junegunn/vim-easy-align'
" Start interactive EasyAlign in visual mode
vmap <Enter> <Plug>(EasyAlign)
" " Start interactive EasyAlign with a Vim movement
nmap <Leader>a <Plug>(EasyAlign)

"Plugin 'Raimondi/delimitMate'
let delimitMate_expand_cr = 1
au FileType mail let b:delimitMate_expand_cr = 1

let delimitMate_expand_space = 1
au FileType tcl let b:delimitMate_expand_space = 1

"Plugin 'tpope/vim-unimpaired'
" Bubble single lines
" nmap <S-Up> [e
" nmap <S-Down> ]e
" Bubble multiple lines
vmap <Up> [egv
vmap <Down> ]egv
