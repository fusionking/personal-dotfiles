
" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " Vim-Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    
    " Commenter
    Plug 'preservim/nerdcommenter'

    " Color Schemes
    " Plug 'junegunn/seoul256.vim'   
    Plug 'arcticicestudio/nord-vim'

    " Jedi
    Plug 'davidhalter/jedi-vim'

    Plug 'vim-test/vim-test'
    Plug 'https://github.com/JarrodCTaylor/vim-python-test-runner'

    " PEP8 Indentation
    Plug 'Vimjas/vim-python-pep8-indent'

    " ALE
    Plug 'dense-analysis/ale'

    Plug 'APZelos/blamer.nvim'

    " For React JSX Syntax Highlighting
    Plug 'HerringtonDarkholme/yats.vim'
    Plug 'yuezk/vim-js'
    Plug 'maxmellon/vim-jsx-pretty'
    Plug 'pangloss/vim-javascript'

    " For Javascript
    Plug 'pangloss/vim-javascript'

    " For TypeScript
    Plug 'leafgarland/typescript-vim'

    " Code completion
    "
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'zchee/deoplete-jedi'

    Plug 'github/copilot.vim'

    " Git
    Plug 'tpope/vim-fugitive'    
call plug#end()
