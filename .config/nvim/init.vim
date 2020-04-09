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
filetype off
set runtimepath+=/usr/share/vim/vimfiles
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    " Plugins
    call dein#add('wsdjeg/dein-ui.vim')
    call dein#add('mhinz/vim-startify')
    call dein#add('editorconfig/editorconfig-vim')
    call dein#add('honza/vim-snippets')
    call dein#add('vim-airline/vim-airline')
    call dein#add('morhetz/gruvbox')
    call dein#add('junegunn/vim-slash')
    call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
    call dein#add('ryanoasis/vim-devicons')
    call dein#add('pbrisbin/vim-mkdir')
    call dein#add('psliwka/vim-smoothie')
    call dein#add('farmergreg/vim-lastplace')
    call dein#add('tpope/vim-commentary')
    call dein#add('tpope/vim-fugitive')
    call dein#add('tpope/vim-repeat')
    call dein#add('tpope/vim-rhubarb')
    call dein#add('tpope/vim-surround')
    call dein#add('iamcco/markdown-preview.nvim', {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'],
                \ 'build': 'sh -c "cd app & yarn install"' })

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

" Coc
let g:coc_global_extensions = [
            \ 'coc-yank',
            \ 'coc-snippets',
            \ 'coc-pairs',
            \ 'coc-lists',
            \ 'coc-diagnostic',
            \ 'coc-git',
            \ 'coc-explorer',
            \ 'coc-calc',
            \ 'coc-yaml',
            \ 'coc-vimlsp',
            \ 'coc-rls',
            \ 'coc-json',
            \ 'coc-html',
            \ 'coc-markdownlint',
            \ 'coc-css',
            \ 'coc-prettier',
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

noremap <C-c> :CocList<CR>

noremap <Leader>a :CocAction<CR>
noremap <Leader>b :CocList buffers<CR>
noremap <Leader>c :CocList outline<CR>
noremap <Leader>d :CocList diagnostics<CR>
noremap <Leader>e :CocCommand explorer --sources=buffer+,file+<CR>
noremap <Leader>f :CocList files<CR>
noremap <Leader>g :CocList grep<CR>
noremap <Leader>l :CocList lines<CR>
noremap <Leader>s :CocList symbols<CR>
noremap <Leader>w :CocList windows<CR>
nmap <leader>q <Plug>(coc-fix-current)
nmap <Leader>r <Plug>(coc-rename)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#whitespace#enabled = 1
let g:airline_powerline_fonts = 1

let g:airline#extensions#coc#warning_symbol = ' '
let g:airline#extensions#coc#error_symbol = ' '

" Theme
colorscheme gruvbox
set termguicolors

" Misc
set scrolloff=4
set number relativenumber
set title
set nowrap
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
set colorcolumn=80,100,120 cursorline cursorcolumn
set undofile undodir=/tmp
let g:loaded_netrw = 0
let g:netrw_dirhistmax = 0
let g:EditorConfig_exclude_patterns = ['fugitive://.\*']
noremap <plug>(slash-after) zz
autocmd TermOpen * startinsert

" Movement maps
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>
nnoremap <A-C-n> <C-w>w
nnoremap <A-C-p> <C-w>W
nnoremap <A-Tab> <C-w>p

" Startify
let g:startify_fortune_use_unicode = 1
let g:startify_change_to_dir = 1
let g:startify_session_persistence = 1

let g:header = [
            \ ' ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓',
            \ ' ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒',
            \ '▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░',
            \ '▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ',
            \ '▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒',
            \ '░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░',
            \ '░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░',
            \ '   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ',
            \ '         ░    ░  ░    ░ ░        ░   ░         ░   ',
            \ '                                ░                  ',
            \ '                                                   '
            \  ]
let g:startify_custom_header =
            \ 'startify#center(g:header) + startify#center(startify#fortune#boxed())'
