export PATH="$PATH:$(du "$HOME/.local/bin" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

export EDITOR="nvim"
export TERMINAL="urxvtc"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export RXVT_SOCKET="${XDG_CONFIG_HOME:-$HOME/.config}/urxvt/urxvtd-ffx"
export ZDOTDIR="${XDG_CONFIG_HOME:-$HOME/.config}/zsh"
export INPUTRC="${XDG_CONFIG_HOME:-$HOME/.config}/inputrc"
export WGETRC="S{XDG_CONFIG_HOME:-$HOME/.config}/wget/wgetrc"

[ "$(tty)" = "/dev/tty1" ] && ! ps -e | grep -qW Xorg && exec startx
