syntax on
set encoding=utf-8
if has("gui_running")
	set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h13
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
filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 Bundle 'gmarik/vundle'

 Bundle 'scrooloose/nerdtree'
 nmap 99 :NERDTreeToggle<CR>
 Bundle 'majutsushi/tagbar'
 nmap 88 :TagbarToggle<CR>
 Bundle 'tpope/vim-rails'
 Bundle 'nanotech/jellybeans.vim'
 colorscheme jellybeans
 Bundle 'suan/vim-instant-markdown'
 Bundle 'kien/ctrlp.vim'
 nmap <silent> <leader>] :CtrlPMixed<cr>
 let g:ctrlp_working_path_mode = 0
 Bundle 'mattn/webapi-vim'
 Bundle 'mattn/gist-vim'
 Bundle 'msanders/cocoa.vim'
 Bundle 'tpope/vim-haml'
 Bundle 'nathanaelkane/vim-indent-guides'
 Bundle 'vim-ruby/vim-ruby'
 Bundle 'bling/vim-airline'
 let g:airline_powerline_fonts = 1
 set laststatus=2
 set lazyredraw
 Bundle 'Valloric/YouCompleteMe'
 let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
 let g:ycm_show_diagnostics_ui = 0
 Bundle 'tpope/vim-unimpaired'
 Bundle 'bronson/vim-trailing-whitespace'
 "Bundle 'tpope/vim-speeddating'
 Bundle 'tpope/vim-repeat'

 Bundle 'kchmck/vim-coffee-script'
 "Two-space indentation
 au BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
 "fold by indentation
 au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

 Bundle 'jelera/vim-javascript-syntax'
 au FileType javascript call JavaScriptFold()
 Bundle 'airblade/vim-gitgutter'
 Bundle 'LaTeX-Box-Team/LaTeX-Box'
 Bundle 'terryma/vim-multiple-cursors'
 "let g:multi_cursor_use_default_mapping=0
 "let g:multi_cursor_next_key="\<c-n>"
 "let g:multi_cursor_prev_key="\<c->"
 "let g:multi_cursor_skip_key="\<c-n>"
 "let g:multi_cursor_exit_key="\<Esc>"
 Bundle 'tpope/vim-surround'
 nmap '' ysiw'
 nmap "" ysiw"
"  imap <C-> ysiw)
"  Bundle 'Lokaltog/vim-easymotion'
"  nmap gj <Leader><Leader>j
"  nmap gk <Leader><Leader>k
"  map / <Plug>(easymotion-sn)
"  omap / <Plug>(easymotion-tn)
"  map n <Plug>(easymotion-next)
"  map N <Plug>(easymotion-prev)
 Bundle 'nono/vim-handlebars'
"  Bundle 'godlygeek/tabular'
 Bundle 'regedarek/ZoomWin'
 Bundle 'benmills/vimux'
"  map <Leader>rb :call VimuxRunCommand("clear;")<CR>
 map <Leader>p :VimuxPromptCommand<CR>
 map <Leader>rb :call VimuxRunCommand("clear;")<CR>
 map <Leader>rl :VimuxRunLastCommand<CR>
 map <Leader>rs :VimuxInterruptRunner<CR>
 let g:VimuxHeight = "35"
 let g:VimuxOrientation = "h"

 Bundle 'junegunn/vim-easy-align'
 " Start interactive EasyAlign in visual mode
 vmap <Enter> <Plug>(EasyAlign)
 " " Start interactive EasyAlign with a Vim movement
 nmap <Leader>a <Plug>(EasyAlign)
 Bundle 'christoomey/vim-tmux-navigator'
 Bundle 'Raimondi/delimitMate'

        let delimitMate_expand_cr = 1
        au FileType mail let b:delimitMate_expand_cr = 1

        let delimitMate_expand_space = 1
        au FileType tcl let b:delimitMate_expand_space = 1
 Bundle 'mileszs/ack.vim'
 Bundle 'tpope/vim-speeddating'
 Bundle 'osyo-manga/vim-over'
 " # end of the github repo

 " vim-scripts repos
 Bundle 'nginx.vim'
 Bundle 'DrawIt'
 Bundle 'tComment'
 Bundle 'sudo.vim'
"  vi sudo:/etc/passwd
 Bundle 'JumpToLastOccurrence'

set cursorline
set cursorcolumn
hi CursorLine   cterm=NONE ctermbg=237 guibg=#3A3A3A
hi CursorColumn cterm=NONE ctermbg=237  guibg=#3A3A3A

filetype plugin indent on     " required!

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
