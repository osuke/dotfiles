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

" syntastic
let g:syntastic_mode_map = { 'mode': 'active',
  \ 'active_filetypes': [],
  \ 'passive_filetypes': ['html'] }
let g:syntastic_javascript_checkers = ['jshint']

" neocomplcache
let g:neocomplcache_enable_at_startup = 1

" emmet
let g:user_emmet_settings = {
\	'variables': {
\		'lang' : 'ja'
\	},
\	'indentation': '  '
\ }

" nerdtree
nnoremap <Space>n :NERDTree<Enter>

" general
colorscheme jellybeans
set number
set noautoindent
set nosmartindent
set expandtab
set tabstop=2
set shiftwidth=2
set clipboard=unnamed

augroup fileTypeIndent
  autocmd!
  autocmd BufNewFile,BufRead *.js setlocal tabstop=4 shiftwidth=4 noexpandtab
augroup END

syntax enable

filetype plugin indent on

set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set fileformats=unix,dos,mac
