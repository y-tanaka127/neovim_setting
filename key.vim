" jjでESC
imap jj <ESC>
" 行内でもj,kで移動可能
nmap j gj
nmap <Down> gj
nmap k gk
nmap <Up> gk

" F3でハイライトを消す
nmap <silent> <F3> :<C-u>nohlsearch<CR><Esc>

" <Leader>にSpaceキー割り当て
let mapleader = "\<Space>"
" <space>+aで全選択
nnoremap <Leader>a ggVG 

" 下分割でターミナルモードを起動
nnoremap <silent> <Leader>t <cmd>belowright new<CR><cmd>terminal<CR>
" <ESC>でターミナルモードから抜ける
tnoremap <ESC> <C-\><C-n>

" ctrl+矢印キーでタブ移動
nnoremap <silent> <C-Left> gT
nnoremap <silent> <C-Right> gt

" vim/airlineプラグイン用
nmap <C-p> <Plug>AirlineSelectPrevTab
nmap <C-n> <Plug>AirlineSelectNextTab
