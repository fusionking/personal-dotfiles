
source $HOME/.config/nvim/vim-plug/plugins.vim

if filereadable(glob("~/.config/nvim/keybindings.vim"))
  source ~/.config/nvim/keybindings.vim
endif

"Plugin Configurations
let g:fzf_layout = { 'tmux': '-p60%,30%' }

" start deoplete
let g:deoplete#enable_at_startup = 1

" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0

" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#force_py_version = 3.9.13
let g:python3_host_prog = '/Users/canarsoy/.local/share/virtualenvs/collective-backend-zDml82hv/bin/python'

" Theme activation
syntax enable
set termguicolors
colorscheme nord

" Vim Airline Theme
let g:airline_theme='luna'
set clipboard=unnamedplus

" Set Line Number
set number

filetype plugin on
set nocompatible

function MyCustomHighlights()
    hi semshiImported      ctermfg=71 guifg=#A3BE8C
    hi semshiGlobal        ctermfg=214 guifg=#5E81AC cterm=bold gui=bold
    hi semshiAttribute  ctermfg=49 guifg=#8FBCBB
    hi semshiParameter       ctermfg=75  guifg=#81A1C1
    hi semshiParameterUnused ctermfg=117 guifg=#88C0D0 cterm=underline gui=underline
    hi semshiBuiltin         ctermfg=207 guifg=#B48EAD
    hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#BF616A

endfunction
autocmd FileType python call MyCustomHighlights()
:set colorcolumn=100


au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4

"au BufNewFile,BufRead *.py \
  "set foldmethod=indent

set foldmethod=indent


" Ale Configurations
let g:ale_linters = {
     \   'python': ['flake8'],
     \}
let g:ale_fixers = {
     \   'python': ['black'],
     \}
let g:ale_fix_on_save = 1
" dense-analysis/ale
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '?'
let g:ale_sign_warning = '?'
let g:ale_lint_on_text_changed = 'never'

let g:airline#extensions#ale#enabled = 1

let g:blamer_enabled = 1
highlight Blamer guifg=lightgrey

set cursorline


" start deoplete
let g:deoplete#enable_at_startup = 1

" For Javascript
let g:deoplete#sources#javascript#omni_patterns = {}
let g:deoplete#sources#javascript#omni_patterns.javascript = '[^.[:digit:]][[:alnum:]_$.]*\%(\.\|->\)\@='
let g:deoplete#sources#javascript#omni_patterns.jsx = '[^.[:digit:]][[:alnum:]_$.]*\%(\.\|->\)\@='

" For TypeScript
let g:deoplete#sources#typescript#omni_patterns = {}
let g:deoplete#sources#typescript#omni_patterns.typescript = '[^.[:digit:]][[:alnum:]_$.]*\%(\.\|->\)\@='
let g:deoplete#sources#typescript#omni_patterns.tsx = '[^.[:digit:]][[:alnum:]_$.]*\%(\.\|->\)\@='

let g:vim_jsx_pretty_colorful_config = 1 " default 0

augroup filetypedetect
  autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.jsx
augroup END

autocmd FileType typescript.jsx setlocal shiftwidth=4 tabstop=4 softtabstop=4 expandtab

let g:semshi_disable_filetypes = ['javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'typescript.jsx']
