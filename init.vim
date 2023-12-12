" プラグインの設定ファイルPath
let s:plugin = '~/.config/nvim/plugins/config/dein.toml'

" Neovim起動時にdein.tomlファイルをチェックし、未インストールのプラグインがあった場合インストールする
"if dein#check_install()
"  call dein#install()
"endif

" Ward off unexpected things that your distro might have made, as
" well as sanely reset options when re-sourcing .vimrc
if &compatible
	set nocompatible
endif

" 初期設定
runtime! base.vim
runtime! key.vim

"runtime! 
" Set Dein base path (required)
let s:dein_base = '/home/y-tanaka/.cache/dein'

" Set Dein source path (required)
let s:dein_src = '/home/y-tanaka/.cache/dein/repos/github.com/Shougo/dein.vim'

" Set Dein runtime path (required)
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
" execute 'set runtimepath+=' . s:dein_src

" Call Dein initialization (required)
if dein#load_state('~/.cache/dein')
	call dein#begin(s:dein_base)

	"call dein#add(s:dein_src)
	call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
	call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

" Finish Dein initialization (required)
	call dein#end()
endif

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
if has('filetype')
  filetype indent plugin on
endif

" Enable syntax highlighting
if has('syntax')
  syntax on
endif

" Uncomment if you want to install not-installed plugins on startup.
if dein#check_install()
 call dein#install()
endif

set background="light"
colorscheme dracula
