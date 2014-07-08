set nocompatible
filetype off                   " required!

 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

 Plugin 'gmarik/Vundle.vim'

 Plugin 'itchyny/lightline.vim'
	let g:lightline = {
	      \ 'colorscheme': 'jellybeans',
	      \ }
 	set laststatus=2

 Plugin 'nanotech/jellybeans.vim'
 "set colorscheme after end()

 Plugin 'scrooloose/nerdtree'
 nmap 99 :NERDTreeToggle<CR>
 Plugin 'majutsushi/tagbar'
 nmap 88 :TagbarToggle<CR>
 Plugin 'tpope/vim-rails'
 Plugin 'suan/vim-instant-markdown'
 Plugin 'kien/ctrlp.vim'
 nmap <silent> <leader>] :CtrlPMixed<cr>
 let g:ctrlp_working_path_mode = 0
 Plugin 'mattn/webapi-vim'
 Plugin 'mattn/gist-vim'
 Plugin 'msanders/cocoa.vim'
 Plugin 'tpope/vim-haml'
 Plugin 'cakebaker/scss-syntax.vim'
 Plugin 'nathanaelkane/vim-indent-guides'
 Plugin 'vim-ruby/vim-ruby'
"  Plugin 'bling/vim-airline'
"  let g:airline_powerline_fonts = 1
"  set laststatus=2
"  set lazyredraw
 Plugin 'Valloric/YouCompleteMe'
 let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
 let g:ycm_show_diagnostics_ui = 0
 Plugin 'tpope/vim-unimpaired'
 Plugin 'bronson/vim-trailing-whitespace'
 "Plugin 'tpope/vim-speeddating'
 Plugin 'tpope/vim-repeat'

 Plugin 'kchmck/vim-coffee-script'
 "Two-space indentation
 au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
 "fold by indentation
 au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

 Plugin 'jelera/vim-javascript-syntax'
 au FileType javascript call JavaScriptFold()
 Plugin 'airblade/vim-gitgutter'
 Plugin 'LaTeX-Box-Team/LaTeX-Box'
 Plugin 'terryma/vim-multiple-cursors'
 "let g:multi_cursor_use_default_mapping=0
 "let g:multi_cursor_next_key="\<c-n>"
 "let g:multi_cursor_prev_key="\<c->"
 "let g:multi_cursor_skip_key="\<c-n>"
 "let g:multi_cursor_exit_key="\<Esc>"
Plugin 'tpope/vim-surround'
 nmap '' ysiw'
 nmap "" ysiw"
"  imap <C-> ysiw)
"  Plugin 'Lokaltog/vim-easymotion'
"  nmap gj <Leader><Leader>j
"  nmap gk <Leader><Leader>k
"  map / <Plug>(easymotion-sn)
"  omap / <Plug>(easymotion-tn)
"  map n <Plug>(easymotion-next)
"  map N <Plug>(easymotion-prev)
 Plugin 'nono/vim-handlebars'
"  Plugin 'godlygeek/tabular'
 Plugin 'regedarek/ZoomWin'
 Plugin 'benmills/vimux'
"  map <Leader>rb :call VimuxRunCommand("clear;")<CR>
 map <Leader>p :VimuxPromptCommand<CR>
 map <Leader>rb :call VimuxRunCommand("clear;")<CR>
 map <Leader>rl :VimuxRunLastCommand<CR>
 map <Leader>rs :VimuxInterruptRunner<CR>
 let g:VimuxHeight = "35"
 let g:VimuxOrientation = "h"

 Plugin 'junegunn/vim-easy-align'
 " Start interactive EasyAlign in visual mode
 vmap <Enter> <Plug>(EasyAlign)
 " " Start interactive EasyAlign with a Vim movement
 nmap <Leader>a <Plug>(EasyAlign)
 Plugin 'christoomey/vim-tmux-navigator'
 Plugin 'Raimondi/delimitMate'

        let delimitMate_expand_cr = 1
        au FileType mail let b:delimitMate_expand_cr = 1

        let delimitMate_expand_space = 1
        au FileType tcl let b:delimitMate_expand_space = 1
 Plugin 'mileszs/ack.vim'
 Plugin 'tpope/vim-speeddating'
 Plugin 'osyo-manga/vim-over'
 Plugin 'othree/html5.vim'
"Plugin 'thinca/vim-textobj-between'
 Plugin 'junegunn/goyo.vim'
 "" Map Goyo toggle to <Leader> + spacebar
 nnoremap <Leader><Space> :Goyo<CR>

 " Color name (:help cterm-colors) or ANSI code
 let g:limelight_conceal_ctermfg = 'gray'
 let g:limelight_conceal_ctermfg = 240

 " Color name (:help gui-colors) or RGB color
 let g:limelight_conceal_guifg = 'DarkGray'
 let g:limelight_conceal_guifg = '#777777'
 "
 let g:limelight_default_coefficient = 0.7

 function! GoyoBefore()
 	Limelight
 endfunction

 function! GoyoAfter()
 	Limelight!
 endfunction

 let g:goyo_callbacks = [function('GoyoBefore'), function('GoyoAfter')]

 nnoremap <Leader>l :Limelight!!<CR>




 " # end of the github repo

 " vim-scripts repos
 Plugin 'nginx.vim'
 Plugin 'DrawIt'
 Plugin 'tComment'
 Plugin 'sudo.vim'
 Plugin 'prev_indent'
"  vi sudo:/etc/passwd
 Plugin 'JumpToLastOccurrence'

call vundle#end()

colorscheme jellybeans
filetype plugin indent on     " required!

syntax on
set encoding=utf-8
if has("gui_running")
	"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h13
	" set guifont=Monaco\ for\ Powerline:h13
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
