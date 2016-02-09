if has('vim_starting')
	set rtp+=~/.vim/bundle/neobundle.vim
endif
call neobundle#begin()
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/neocomplcache.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'jelera/vim-javascript-syntax'
NeoBundle 'tpope/vim-surround'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'nanotech/jellybeans.vim'

call neobundle#end()
filetype plugin indent on

if !has('vim_starting')
	call neobundle#call_hook('on_source')
endif

NeoBundleCheck

let g:user_emmet_settings = {
\	'variables': {
\		'lang' : 'ja'
\	},
\	'indentation': '  '
\ }

set number

set tabstop=4

"set expandtab

"set mouse=a

set clipboard=unnamed

set cindent

set fileformat=unix

syntax enable

nnoremap <Space>n :NERDTree<Enter>

