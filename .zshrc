autoload -U compinit; compinit # 便利補完を有効に
setopt auto_cd # コマンドがなく、ディレクトリ名に一致した場合、そこへ移動する
setopt auto_pushd # ディレクトリの移動履歴をpush
setopt correct # コマンド名が間違っていた場合、優しく諭してくれる
setopt nolistbeep # ビープ音ならさない

autoload -U colors; colors # 色つける

# history
HISTFILE=~/.zsh_history # ヒストリ保存ファイル
HISTSIZE=10000 
SAVEHIST=10000 
setopt extended_history # ヒストリに実行時間も保存す
setopt share_history # 他のシェルのヒストリをリアルタイムで共有する
setopt hist_ignore_dups # 直前と同じコマンドはヒストリに追加しない
setopt hist_reduce_blanks # 余分なスペースを削除してヒストリに保存する
function history-all { history -E 1 } # ヒストリを全件表示

# prompt
PROMPT='%n@%m:%~$ '

# alias
alias ll='ls -G' # lsに色つける
alias ll='ls -l'
alias grep='grep --color=auto' # grepに色つける
alias vi='vim' # vim使う
alias history='history -E' # historyに時間表示

# 環境変数
export HOMEBREW_CASK_OPTS=--appdir=/Applications #homebrew_cask用の設定
export CLICOLOR=1 # lsの色オン
export LSCOLORS=DxGxcxdxCxegedabagacad # lsの色設定
