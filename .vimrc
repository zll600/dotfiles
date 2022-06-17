" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible  "be iMproved, required 
filetype on  "required 检测文件类型
filetype indent on  "required 根据文件类型，选择不同的缩进
filetype plugin on  "required 启用插件

set autoindent " always set autoindenting on 自动缩进
" indent C++ autoindent private public keyword 
" set cindent
" set cinoptions
set smartindent

set expandtab
set tabstop=4
set shiftwidth=4

set history=100  " keep 100 lines of command line history
set ruler  " show the cursor position all the time
set showcmd " display incomplete commands
set incsearch " do incretmental searching


set hlsearch
set showmode

set foldmethod=syntax

" 取消补全内容以分割子窗口形式出现，只显示补全列表
set completeopt=longest,menu

syntax enable

" 定义快捷键的前缀，即<Leader>
" let mapleader="\"
" inoremap jk <ESC><ESC>

" 打tag
" --c++-kinds=+p  : Adds prototypes in the database for C/C++ files.
"--fields=+iaS   : Adds inheritance (i), access (a) and function
"                  signatures (S) information.
"--extra=+q      : Adds context to the tag name. Note: Without this
"                  option, the script cannot get class members.
nnoremap<leader>tg :!ctags -R --fields=+aS --extra=+q<CR>





" ======= for coc ==== 
let g:coc_global_extension = [ 
            \ 'coc-json',
            \ 'coc-vimlsp',
            \ 'coc-vetur',
            \ 'coc-jedi',
            \ 'coc-yaml',
            \ 'coc-go',
            \ 'coc-tsserver', 'coc-html', 'coc-yank', 'coc-sql']

" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

hi Pmenu ctermfg=black ctermbg=DarkGreen
hi PmenuSel ctermfg=white ctermbg=DarkGreen
hi CocErrorSign ctermfg=red  guibg=red
hi CocErrorfloat ctermfg=white ctermbg=red
hi CocInfoSign ctermfg=blue
hi CocInfofloat ctermfg=white ctermbg=blue
hi CocWarningSign ctermfg=white ctermbg=yellow
" I have trIEd all of the below,but to no avail
" hi CocHighlightText ctermfg=black ctermbg=DarkGreen
" hi CocHintSign ctermfg=black ctermbg=DarkGreen
" hi CocHintHighlight ctermfg=black ctermbg=DarkGreen
" hi CocHintVirtualText ctermfg=black

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" =====
let g:omni_sql_no_default_maps = 1


" =========== for airline ========:
let g:airline#extensions#languageclient#enabled = 1
let airline#extensions#languageclient#error_symbol = 'E:'
let airline#extensions#languageclient#warning_symbol = 'W:'
let airline#extensions#languageclient#show_line_numbers = 1
let airline#extensions#languageclient#open_lnum_symbol = '(L'
let airline#extensions#languageclient#close_lnum_symbol = ')'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#exclude_preview = 1
" let airline#extensions#tabline#disable_refresh = 1
" let g:airline#extensions#tabline#buffer_min_count = 0
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

" GitGutter           Git辅助插件
let g:gitgutter_enabled               = 0      " 默认不开启
let g:gitgutter_signs                 = 0      " 默认不开启提示
let g:gitgutter_highlight_lines       = 0      " 默认不高亮行
let g:gitgutter_sign_added            = '+'    " 自定义新增指示符
let g:gitgutter_sign_modified         = '>'    " 自定义修改指示符
let g:gitgutter_sign_removed          = '-'    " 自定义删除指示符
let g:gitgutter_sign_modified_removed = '->'   " 自定义既修改又删除指示符

" ===== vim-go ====
let g:go_template_autocreate = 0

call plug#begin('~/.vim/plugged')
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'liuchengxu/vista.vim'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-markdown'



" Initialize plugin system
call plug#end()



filetype plugin indent on    " required
