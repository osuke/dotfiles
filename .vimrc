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

colorscheme jellybeans

let g:user_emmet_settings = {
\	'variables': {
\		'lang' : 'ja'
\	},
\	'indentation': '  '
\ }

set number
set noautoindent
set nosmartindent

set expandtab
set tabstop=2
set shiftwidth=2

augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.js setlocal tabstop=4 shiftwidth=4 noexpandtab
augroup END

set clipboard=unnamed

"set cindent

set fileformat=unix

set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8

syntax enable

nnoremap <Space>n :NERDTree<Enter>

filetype plugin indent on
