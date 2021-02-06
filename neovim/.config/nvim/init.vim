"  _   _        __      ___
" | \ | |       \ \    / (_)
" |  \| | ___  __\ \  / / _ _ __ ___
" | . ` |/ _ \/ _ \ \/ / | | '_ ` _ \
" | |\  |  __/ (_) \  /  | | | | | | |
" |_| \_|\___|\___/ \/   |_|_| |_| |_|

" ===========================================================
" ~~~~~>-----)-----}-----=[ Plugins ]=-----{-----(-----<~~~~~
" ===========================================================

" Init
scriptencoding utf-8
if &compatible
    set nocompatible
endif
filetype off
set runtimepath+=/usr/share/vim/vimfiles
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    " Plugins
    call dein#add('antoinemadec/coc-fzf')
    call dein#add('cocopon/iceberg.vim')
    call dein#add('editorconfig/editorconfig-vim')
    call dein#add('farmergreg/vim-lastplace')
    call dein#add('honza/vim-snippets')
    call dein#add('junegunn/fzf.vim')
    call dein#add('junegunn/vim-slash')
    call dein#add('justinmk/vim-sneak')
    call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
    call dein#add('pbrisbin/vim-mkdir')
    call dein#add('rhysd/git-messenger.vim', {'lazy' : 1, 'on_cmd' : 'GitMessenger', 'on_map' : '<Plug>(git-messenger'})
    call dein#add('ryanoasis/vim-devicons')
    call dein#add('sheerun/vim-polyglot')
    call dein#add('tpope/vim-commentary')
    call dein#add('tpope/vim-fugitive')
    call dein#add('tpope/vim-repeat')
    call dein#add('tpope/vim-rhubarb')
    call dein#add('tpope/vim-surround')
    call dein#add('vim-airline/vim-airline')
    call dein#add('wsdjeg/dein-ui.vim')

    call dein#end()
    call dein#save_state()
endif
if dein#check_install()
    call dein#install()
endif
filetype plugin indent on
syntax enable

" ===========================================================
" ~~~~~>-----)-----}-----=[ Options ]=-----{-----(-----<~~~~~
" ===========================================================

let g:mapleader = ' '

" Fzf
let g:fzf_buffers_jump = 1
let g:fzf_command_prefix = 'Fzf'
let g:fzf_colors = {
            \ 'fg':      ['fg', 'Normal'],
            \ 'bg':      ['bg', 'Normal'],
            \ 'hl':      ['fg', 'Comment'],
            \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
            \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
            \ 'hl+':     ['fg', 'Statement'],
            \ 'info':    ['fg', 'PreProc'],
            \ 'border':  ['fg', 'Ignore'],
            \ 'prompt':  ['fg', 'Conditional'],
            \ 'pointer': ['fg', 'Exception'],
            \ 'marker':  ['fg', 'Keyword'],
            \ 'spinner': ['fg', 'Label'],
            \ 'header':  ['fg', 'Comment'] }
let g:fzf_layout = { 'window': { 'width': 0.95, 'height': 0.85 } }

autocmd! FileType fzf tnoremap <buffer> <silent> <Esc> <C-c>

nmap <silent> <Leader>b :FzfBuffers<CR>
nmap <silent> <Leader>w :FzfWindows<CR>
nmap <silent> <Leader>g :FzfRg<CR>
nmap <silent> <Leader>f :FzfFiles<CR>
nmap <silent> <Leader>l :FzfLines<CR>

" Coc
let g:coc_global_extensions = [
            \ 'coc-actions',
            \ 'coc-calc',
            \ 'coc-clangd',
            \ 'coc-css',
            \ 'coc-cssmodules',
            \ 'coc-diagnostic',
            \ 'coc-emmet',
            \ 'coc-eslint',
            \ 'coc-explorer',
            \ 'coc-git',
            \ 'coc-godot',
            \ 'coc-html',
            \ 'coc-json',
            \ 'coc-lists',
            \ 'coc-markdownlint',
            \ 'coc-omnisharp',
            \ 'coc-pairs',
            \ 'coc-prettier',
            \ 'coc-python',
            \ 'coc-rust-analyzer',
            \ 'coc-sh',
            \ 'coc-snippets',
            \ 'coc-svg',
            \ 'coc-vimlsp',
            \ 'coc-yaml',
            \ 'coc-yank',
            \]

inoremap <silent><expr> <c-space> coc#refresh()
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)
nmap <silent> <C-k> <Plug>(coc-diagnostic-prev)
nmap <silent> <C-j> <Plug>(coc-diagnostic-next)
inoremap <expr> <C-l> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
command! -nargs=0 Format :call CocAction('format')
inoremap <silent><expr> <cr> "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

nmap <silent> <Leader>a :CocCommand actions.open<CR>
nmap <silent> <Leader>c :CocFzfList commands<CR>
nmap <silent> <Leader>o :CocFzfList outline<CR>
nmap <silent> <Leader>d :CocFzfList diagnostics<CR>
nmap <silent> <Leader>e :CocCommand explorer --sources=buffer+,file+<CR>
nmap <silent> <Leader>s :CocFzfList symbols<CR>
nmap <silent> <Leader>q <Plug>(coc-fix-current)
nmap <silent> <Leader>r <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#coc#warning_symbol = ' '
let g:airline#extensions#coc#error_symbol = ' '
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '  '
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '  '

" Theme
set termguicolors
set background=dark
colorscheme iceberg

" Misc
set scrolloff=4 sidescroll=1 sidescrolloff=4
set number relativenumber
set cursorline
set title
set wrap breakindent breakindentopt=sbr showbreak=↪
set hidden
set confirm
set inccommand=nosplit
set mouse=a
set noshowmode
set completeopt-=preview
set updatetime=300
set shortmess+=c
set nobackup nowritebackup
set signcolumn=yes
set foldmethod=syntax foldlevelstart=99
set tabstop=4 shiftwidth=4 softtabstop=4 smarttab autoindent expandtab
set listchars=space:·,eol:¬,tab:▸\ ,extends:»,precedes:«,trail:•,nbsp:␣ list
set colorcolumn=80,100,120
set undofile undodir=/tmp
let g:netrw_dirhistmax = 0
let g:EditorConfig_exclude_patterns = ['fugitive://.\*']
noremap <plug>(slash-after) zz
autocmd TermOpen * setlocal listchars= nonumber norelativenumber signcolumn=no nocursorline
autocmd TermOpen * startinsert
set conceallevel=0
set clipboard=unnamed
set nrformats=bin,hex,octal,alpha
let g:sneak#label = 1

" Movement maps
tnoremap <silent> <Esc> <C-\><C-n>
tnoremap <silent> <C-v><Esc> <Esc>
nnoremap <silent> <A-h> <C-w>h
nnoremap <silent> <A-j> <C-w>j
nnoremap <silent> <A-k> <C-w>k
nnoremap <silent> <A-l> <C-w>l
nnoremap <silent> <Tab> :bn<CR>
nnoremap <silent> <S-Tab> :bp<CR>
nnoremap <silent> <A-C-n> <C-w>w
nnoremap <silent> <A-C-p> <C-w>W
nnoremap <silent> <A-Tab> <C-w>p
