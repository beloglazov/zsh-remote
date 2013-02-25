# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="beloglazov-remote"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git extract history-substring-search lein svn autojump)

# Add custom completion scripts
fpath=(~/.zsh/completion $fpath)

source $ZSH/oh-my-zsh.sh

# Disable auto-correction
unsetopt correct_all

# To enable autojump
source /etc/profile

# Colorized ls
eval `dircolors -b`

export EDITOR="emacs"

# Key Bindings

bindkey "\e[1~" beginning-of-line # Home
bindkey "\e[4~" end-of-line # End
bindkey "\e[5~" beginning-of-history # PageUp
bindkey "\e[6~" end-of-history # PageDown
bindkey "\e[2~" quoted-insert # Ins
bindkey "\e[3~" delete-char # Del
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\e\e[C" forward-word
bindkey "\e\e[D" backward-word
bindkey "\e[Z" reverse-menu-complete # Shift+Tab
bindkey "^[[3^" delete-word # C-Del
bindkey "^H" backward-delete-word # C-BackSpace

# for rxvt
bindkey "\e[7~" beginning-of-line # Home
bindkey "\e[8~" end-of-line # End
# for non RH/Debian xterm, can't hurt for RH/Debian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line


# Functions

function silent () {nohup $@ &>/dev/null &!}
function svnd () {svn diff $* | colordiff}
function top10 () {history | awk '{print $2}'|awk 'BEGIN {FS="|"} {print $1}' | sort | uniq -c | sort -rn | head -10}
function f() {find ./ -iname "*$1*" 2>/dev/null | grep -i $1}

unalias g
function g () {git ca $*; git push}


# Aliases

alias ll='ls -lah'
alias l='ls -lh'
alias lltime='ll -tr'
alias df='df -h'
alias du='du -hs'
alias mkdirs='mkdir -p'
alias e='emacsclient'
alias n='nano'
alias bc='bc -l'
alias psg='ps aux | grep'
alias emacs-restart='pkill -u `whoami` emacs; emacs --daemon'
alias g='grep -i'
alias x='extract'

# SVN aliales
alias svn='colorsvn'
alias svnc='svn ci -m'
# alias svnd='svn diff $* | colordiff'
alias svnl='svn up -q; colorsvn log -l 10'
alias svns='svn st'

# Git aliases
alias gits='git s'
alias gitc='git ci'
alias gitca='git ca'
alias gitl='git l'
alias gitco='git co'
alias gitb='git b'
alias gitd='git diff'
alias gitp='git p'
alias gitpu='git pu'
alias gitpup='gitpu; gitp'

# Other aliases
alias lsd='ls -lhd *(-/DN)'
alias lsh='ls -lhd .*'
alias ls1='ls -1'
alias ff='find |grep'
alias c="clear"

# Don't share history between terminals
unsetopt APPEND_HISTORY

source ~/.zshenv

# Run the emacs daemon
if ! pgrep -u `whoami` -f 'emacs --daemon' >/dev/null; then
	emacs --daemon
fi
