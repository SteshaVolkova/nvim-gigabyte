syntax on
filetype on
filetype plugin on
filetype indent on

set nocompatible
set fileformat=unix

set termguicolors
set t_Co=256
let base16colorspace=256  " Access colors present in 256 colorspace
set shell=bash
vmap <C-c> "+y

set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
" tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set smartindent
" command alliases
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq
cnoreabbrev Wq wq
cnoreabbrev wQ wq

call plug#begin('~/.local/share/nvim/site/autoload/')
    " stylish
    " Plug 'Valloric/MatchTagAlways'

    Plug 'editorconfig/editorconfig-vim'

    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'stefvolkova/my-snipmate-snippets'
    Plug 'itchyny/lightline.vim'
    " colorscheme
    packadd! dracula
    syntax enable
    colorscheme dracula
    " Plug 'chriskempson/base16-vim'
    " Plug 'AlessandroYorba/Alduin'
    " Navigation
    "Ranger
    " Plug 'francoiscabrol/ranger.vim'
    " Plug 'rbgrouleff/bclose.vim'
    " NERDTree
    Plug 'scrooloose/nerdtree'
    " Plug 'vsushkov/nerdtree-ack'
    " Plug 'mileszs/ack.vim'
    " Ctrl-P
    " Plug 'kien/ctrlp.vim'
    " grep
    " Plug 'ramele/agrep'
    " Plug 'mhinz/vim-grepper'
    "MxSp
    " Plug 'tpope/vim-surround'
    Plug 'tomtom/tcomment_vim'
    "shippets
    " Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    "Plug 'Shougo/neosnippet.vim'
    Plug 'Shougo/neosnippet-snippets'
    " Plug 'garbas/vim-snipmate'
    " Refactoring

    Plug 'vim-syntastic/syntastic'
    " wiki
    Plug 'vimwiki/vimwiki'
    " git
    " Plug 'tpope/vim-fugitive'
    " TagBar
    " Plug 'majutsushi/tagbar'
    " PHP
    " Plug 'vim-php/tagbar-phpctags.vim'
call plug#end()

Plug 'dracula/vim'

"colors
    syntax on
    color dracula
    " colorscheme base16-twilight
    " colorscheme alduin
    " let g:lightline = {'colorscheme': 'one'}
    " let g:lightline = {
    "   \ 'colorscheme': 'wombat',
    "   \ }

nnoremap <S-r> :NERDTreeFind<cr>
" map \f :ranger
" nmap <S-f> :Ranger<cr>
" nmap <C-h> :bprevious<cr>
" nmap <C-j> :bnext<cr>
" nmap \[ :tabp<cr>
" nmap \] :tabn<cr>
" nmap \p :tabnew<cr>
" nmap <C-s> :sb<cr>
" nmap <C-i> :vert sb<cr>
" nnoremap <M-h> :vertical resize -5<cr>
" nnoremap <M-l> :vertical resize +5<cr>
" nnoremap <M-k> :res -3<cr>
" nnoremap <M-j> :res +3<cr>
" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l
" nmap <S-t> :TagbarToggle<cr>
"map <C-p> :CtrlP<cr>
"map <leader><S-k> :Pydoc [insert word]<cr>
"\ww wiki

" show full patch
" nnoremap <M-x> <Esc>:echo expand('%:p')<Return>

" exit for terminal mode
" tnoremap <Esc> <C-\><C-n>

"Ctrl-P
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" let g:ctrlp_custom_ignore = {
"   \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"   \ 'file': '\v\.(exe|so|dll)$',
"   \ 'link': 'some_bad_symbolic_links',
"   \ }

"Deoplete
    let g:deoplete#enable_at_startup = 1
"Neocomplete
    let g:acp_enableAtStartup = 0
    let g:neocomplete#enable_at_startup = 1
    let g:neocomplete#enable_smart_case = 1
    let g:neocomplete#sources#syntax#min_keyword_length = 3
"Neosnippet
    " Plugin key-mappings.
    " Note: It must be "imap" and "smap".  It uses <Plug> mappings.
    "imap <C-k>     <Plug>(neosnippet_expand_or_jump)
    "smap <C-k>     <Plug>(neosnippet_expand_or_jump)
    "xmap <C-k>     <Plug>(neosnippet_expand_target)
    " Enable snipMate compatibility feature.
    "let g:neosnippet#enable_snipmate_compatibility = 1
    " Tell Neosnippet about the other snippets
    "let g:neosnippet#snippets_directory='~/.config/nvim/snipMate/'

" Ultisips
    let g:UltiSnipsExpandTrigger="<tab>"
    let g:UltiSnipsJumpForwardTrigger="<tab>"
    let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

    let g:UltiSnipsEditSplit="vertical"
" Syntastic
    let g:syntastic_enable_signs=1
    set statusline+=%#warningmsg#
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
    let g:syntastic_php_checkers = ['php', 'phpcs']
    let g:syntastic_php_phpcs_exec = '/home/mxs/magento-coding-standard/vendor/bin/phpcs'
    let g:syntastic_php_phpcs_args = '--standard=MEQP1'
"TagBar
    "PHP
    " let g:tagbar_phpctags_bin='/home/mxs/ctags'
    " let g:tagbar_phpctags_memory_limit = '512M'

" set list
set listchars=tab:>·,trail:~,extends:>,precedes:<,space:-

"common
set number
set nobackup
set nowritebackup
set noswapfile
set nowrap
set colorcolumn=120

"highlight Normal guibg=#121212
highlight ColorColumn guibg=#181822

set mouse=a
set mousemodel=popup
set ic
set scrolloff=3     " keep 3 lines when scrolling
set hlsearch        " highlight searches
set smartcase       " smart case when searching
set title           " Set the terminal title
set autoread        " When a file has been changed outside of Vim, automatically read it again
