autoload -U compinit; compinit # 便利補完を有効に
setopt auto_cd # コマンドがなく、ディレクトリ名に一致した場合、そこへ移動する

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
