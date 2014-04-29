" 文字コード
:set encoding=utf-8 "内部encoding
:set fileencodings=utf-8,ucs-bom,iso-2022-jp-3,iso-2022-jp,eucjp-ms,euc-jisx0213,sjis,cp932,utf-7 "ファイルの自動認識。適当

" 表示
syntax enable "コードの色分け
set background=dark "ターミナル背景色が暗い時用の見やすい色付け
set number "行番号を表示
set title "タイトルを表示
set cursorline "カーソル行の背景色を変える
" set cursorcolumn "カーソル位置のカラムの背景色を変える
set list "不可視文字を表示
set listchars=tab:>-,eol:< "tab,改行のフォーマット指定
set showmatch "括弧入力時の対応する括弧を表示

" タブ/インデント
set cindent "賢いautoindent
set expandtab "tabの代わりにスペースを挿入する
set tabstop=4 "ファイル中のtabをスペース4つ分で表示する
set shiftwidth=4 "vimが挿入するインデントをスペース4つ分に設定
set softtabstop=0 "キーボードでtabを押した時、スペースが挿入される数。tabstopに従うよう0にしておく

" 検索
set hlsearch "検索結果をハイライト
set incsearch "インクリメンタル検索

" ファイル関連
set noswapfile "スワップファイルを作成しない
set hidden "保存されていないファイルがあっても別ファイルを開けるようにする
set autoread "外部でファイルに変更が入った場合自動的に読み直す

" その他
" set mouse=a "マウス入力を受け付ける

" NeoBundle start
set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#rc(expand('~/.vim/bundle/'))
endif
" ここにプラグイン書く
NeoBundle 'Lokaltog/powerline'
NeoBundle 'tomasr/molokai'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'w0ng/vim-hybrid'
NeoBundle 'chriskempson/vim-tomorrow-theme'

filetype plugin on
filetype indent on
" NeoBundle end

set t_Co=256 "256色表示
colorscheme molokai
