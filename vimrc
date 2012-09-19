" pathogen shenanigans
call pathogen#infect()

" set up some var defaults
let g:loaded_matchparen=1      " don't do matchparen nastiness
let g:xml_use_xhtml=1          " put /> on singleton tags in HTML
let g:sql_type_default='mysql' " default to MySQL style SQL syntax
let g:php_sql_query=1          " assume strings in PHP are SQL
let &guicursor = &guicursor . ",a:blinkon0" "stop blinking in gvim

" I don't like q as macro
map q <Nop>
let mapleader = "q"

" syntax related settings
syntax on
syntax sync minlines=200
set background=dark
highlight clear NonText
highlight clear Underlined
highlight link  Underlined CursorLine

" colors!
colorscheme torte

" filetype-based settings
filetype plugin indent on

" compiler setup
autocmd BufNewFile,BufRead * if &ft == 'perl'  | compiler perl  | endif
autocmd BufNewFile,BufRead * if &ft == 'mason' | compiler mason | endif
autocmd BufNewFile,BufRead * if &ft == 'ruby'  | compiler ruby  | endif
autocmd BufNewFile,BufRead * if &ft == 'php'   | compiler php   | endif
au BufNewFile,BufRead *.frag,*.vert,*.fp,*.vp,*.glsl setf glsl
au BufNewFile,BufRead *.cl       setf opencl 
au BufNewFile,BufRead *.json     setf javascript

" general settings
set autoindent
set backspace=indent,eol
set expandtab
set exrc
set foldlevel=99
set foldmethod=indent
set ignorecase
set incsearch
set laststatus=2
set nobackup
set noruler
set noshowmode
set number
set shiftround
set shiftwidth=4
set showmatch
set smartcase
set softtabstop=4
set splitbelow
set statusline=%t%m%r%h%{SyntasticStatuslineFlag()}%=(%n:%c,%l/%L)%y%{fugitive#statusline()}
set tabstop=8
set tags=tags;/
set tildeop
set wildignore+=*/.git/*,*.pyc,*.o,*/build/*,*.deb,.*.swp,*.png,*.gif,*.so,*.pyd,*.dll,*.exe,*/build/*
set wildmode=list:longest,full
set wrapscan
set writebackup

" new normal-mode mappings
nmap Y y$
nmap S
\ :if exists("syntax_on") <Bar>
\   syntax off <Bar>
\ else <Bar>
\   syntax enable <Bar>
\ endif <CR>
nmap <Bslash> :set invpaste<CR>:set paste?<CR>
nnoremap <C-w>j <C-w>w
nnoremap <C-w>k <C-w>W

" new commands and command aliases
command -nargs=? -complete=file E split <args>

" ctrlp
let g:ctrlp_prompt_mappings = {
            \    'PrtBS()':      ['<bs>', '<c-]>', '<c-h>'],
            \'PrtCurLeft()': ['<left>', '<c-^>'],
            \}

"virtualenv
let g:virtualenv_directory = '~/venv'

"syntastic
let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': [],
                            \ 'passive_filetypes': [] }

"matchit
runtime macros/matchit.vim

"Leader mappings
"Fugitive stuff
nnoremap <silent> <Leader>gb :Gblame<CR>
nnoremap <silent> <Leader>gd :Gdiff<CR>
nnoremap <silent> <Leader>gr :Gread<CR>
nnoremap <silent> <Leader>gw :Gwrite<CR>
nnoremap <silent> <Leader>gf :Git fetch --all --prune<CR>
nnoremap <silent> <Leader>gp :Git push<CR>
nnoremap <silent> <Leader>gP :Git pull<CR>

"Function key mappings
nnoremap <silent> <F5> :Gstatus<CR>
nnoremap <silent> <F6> :TlistToggle<CR>
map <silent> <F8> <Plug>TaskList
