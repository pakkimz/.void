" set runtimepath^=/.vim runtimepath+=~/.vim/
" let &packpath=&runtimepath
" source ~/.vimrc

syntax on
syntax sync minlines=256

filetype plugin indent on                               " all in one line

call plug#begin('~/.config/nvim/plugged')
Plug 'pakkimz/vim-gummybears-colorscheme'
Plug 'sheerun/vim-polyglot'                             " mandatory
Plug 'Raimondi/delimitMate'                             " jump c-g g or just repeat the action
Plug 'preservim/nerdtree'
Plug 'rking/ag.vim'
Plug 'yuttie/comfortable-motion.vim'
Plug 'jeetsukumaran/vim-buffergator'                    " leader-b for for buffer leader-t for tab
Plug 'machakann/vim-highlightedyank'
Plug 'henrik/vim-indexed-search'
Plug 'unblevable/quick-scope'
Plug 'matze/vim-move'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'																	" ctrl-X spaces or enter in html
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'kana/vim-textobj-function'
Plug 'vim-scripts/argtextobj.vim'
Plug 'vim-scripts/loremipsum'
" Plug 'majutsushi/tagbar'                                " sudo xbps-install ctags
" Plug 'junegunn/goyo.vim'
" Plug 'Yggdroot/indentLine'                              " need expandtab to make it works
" Plug 'ivalkeen/vim-simpledb'
" Plug 'valloric/matchtagalways'
Plug 'ap/vim-css-color'
Plug 'captbaritone/better-indent-support-for-php-with-html'
call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/commands/commands.vim
