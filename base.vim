set number            " 行番号表示
set background=light  " colorscheme設定
set cursorline        " 
set tabstop=2         "タブを何文字の空白に変換するか
set shiftwidth=2      "自動インデント時に入力する空白の数
set splitright
set mouse=
set guicursor=
set incsearch         " 入力途中でも検索がおこなわれるようにする
" set laststatus=2
set cmdheight=2
set hlsearch          " 文字列検索のハイライト
set backspace=indent,eol,start " バックスペースキーで削除
"set showtabline=2     " タブ毎に常にタブラインを表示
set noswapfile
set cursorline
"set cursorcolumn
"colorscheme noctis_azureus

" vim/airlineプラグイン用
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
let g:airline_theme = 'powerlineish'           " テーマの指定
let g:airline#extensions#tabline#enabled = 1 " タブラインを表示
let g:airline#extensions#tabline#buffer_idx_mode = 1 " bufferの番号表示
let g:airline_powerline_fonts = 1            " Powerline Fontsを利用
let g:airline#extensions#tabline#buffer_idx_format = {
	\ '0': '0 ',
	\ '1': '1 ',
	\ '2': '2 ',
	\ '3': '3 ',
	\ '4': '4 ',
	\ '5': '5 ',
	\ '6': '6 ',
	\ '7': '7 ',
	\ '8': '8 ',
	\ '9': '9 '
	\}

imap jk <ESC>
" 行内でもj,kで移動可能
nmap j gj
nmap <Down> gj
nmap k gk
nmap <Up> gk
" F3でハイライトを消す
nmap <silent> <F3> :<C-u>nohlsearch<CR><Esc>
" <Leader>にSpaceキー割り当て
let mapleader = "\<Space>"
" 隠しファイルを表示する
let g:fern#default_hidden=1

" ctrl+矢印キーでタブ移動
nnoremap <silent> <C-Left> gT
nnoremap <silent> <C-Right> gt

highlight CocFloating ctermbg=237 guibg=#414141
highlight CocFloatThumb  ctermbg=239 guibg=#585858
