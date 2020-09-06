" set runtimepath^=/.vim runtimepath+=~/.vim/
" let &packpath=&runtimepath
" source ~/.vimrc

syntax on
syntax sync minlines=256

filetype plugin indent on                               " all in one line

call plug#begin('~/.config/nvim/plugged')
" Plug 'igungor/schellar'
Plug 'vim-syntastic/syntastic', { 'on': 'SyntasticToggleMode' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }      " sudo xbps-install ctags
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
Plug 'tpope/vim-ragtag'																	" ctrl-X spaces or enter in html
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-commentary'
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/ReplaceWithRegister'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'
Plug 'wellle/targets.vim'																" more powerful ci) ...
" Plug 'ivalkeen/vim-simpledb'
" Plug 'ap/vim-css-color'
" Plug 'gregsexton/matchtag', { 'for': 'html' }
Plug 'Yggdroot/indentLine'															" need expandtab to make it works
Plug 'captbaritone/better-indent-support-for-php-with-html', { 'for': 'php' }
call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim
source $HOME/.config/nvim/commands/commands.vim
