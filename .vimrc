call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go', { 'tag': '*', 'do': ':GoUpdateBinaries' }
Plug 'tomasr/molokai'
Plug 'majutsushi/tagbar'
Plug 'SirVer/ultisnips'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }

"" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --go-completer' }

"" Plug 'ervandew/supertab'

call plug#end()

filetype plugin on

"" if has('python3')
""    silent! python3 1
"" endif

"" molokai
let &t_Co=256
let g:rehash256 = 1
let g:molokai_original = 1
colorscheme molokai

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-m>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
set encoding=utf-8

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

"" tagbar
nmap <F8> :TagbarToggle<CR>

"" vim-go
let mapleader = ","

" splitjoin
nmap <Leader>j :SplitjoinJoin<cr>
nmap <Leader>s :SplitjoinSplit<cr>

let g:go_fmt_command = "goimports"
let g:go_fmt_options = { 'gofmt': '-s', 'goimports': '-local github.com/topsteam'}
let g:go_list_type = "quickfix"
"" let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'megacheck']
let g:go_metalinter_autosave = 1
let g:go_metalinter_autosave_enabled = ['vet']
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_extra_types = 1
"" let g:go_auto_sameids = 1

"" ale
" Error and warning signs.
let g:ale_sign_error = '⤫'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
" let b:ale_fixers = ['vet', 'golint']
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)


" Enable integration with airline.
let g:airline#extensions#ale#enabled = 1

map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>
nnoremap <leader>a :cclose<CR>
nnoremap <leader>q :GoSameIdsToggle<CR>
"" nnoremap <leader>w :GoSameIdsClear<CR>
nnoremap <leader>d :GoDef<CR>
nnoremap <leader>o :GoDoc<CR>
autocmd FileType go nmap <leader>b  <Plug>(go-build)
autocmd FileType go nmap <leader>r  <Plug>(go-run)
autocmd FileType go nmap <leader>t  <Plug>(go-test)
autocmd FileType go nmap <Leader>c  <Plug>(go-coverage-toggle)
autocmd FileType go nmap <Leader>i <Plug>(go-info)


" let g:go_auto_type_info = 1
" set updatetime=100


syntax on

"set number
set autowrite
set tabstop=4
set shiftwidth=4
set smarttab
set wrap
set autoindent
set smartindent
set cin
set showmatch
set hlsearch
set incsearch
set ignorecase
set lz
