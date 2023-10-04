#
# ~/.bashrc
#

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# If not running interactively, don't do anything.
[[ $- != *i* ]] && return

shopt -s histappend
HISTSIZE=''
HISTFILESIZE=''
# Change history file location because certain bash sessions truncate
# `.bash_history`.
HISTFILE="$HOME/.history_bash"
HISTCONTROL='ignoreboth'

# Auto Completion Case Insensitivew
bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
# bind 'TAB:menu-complete'

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1=" \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
# PS1='$(basename "$PWD" |head -c1)\$ '

if command -v nvim &>/dev/null; then
  export VISUAL='nvim'
  export EDITOR='nvim'
  export MANPAGER="nvim '+Man!'"
else
  export VISUAL='vi'
  export EDITOR='vi'
fi

alias es="exec $SHELL"

alias cp='cp -i'
alias mv='mv -i'
# Only highlight matches.
export GREP_COLORS='ms=01;31:mc=01;31:sl=:cx=:fn=:ln=:bn=:se='
alias grep='grep --color=auto'

alias mpv='mpv --hr-seek=yes'
export RLWRAP_HOME="$HOME/.local/share/rlwrap"

hide() (
  set -e

  for file in "$@"; do
    mv -i {,.}"$file"
    echo mv {,.}"$file"
  done
)

# Some other custom aliases I prefer to put right here
alias cat='batcat --style=plain --paging=never' # In debian derivatives is batcat, in other it's just bat
alias ls='exa --group-directories-first'
alias tree='exa -T'
alias la='exa -la --group-directories-first'
alias l='exa -l'
alias vih='nvim .'
alias svih='sudo nvim .'
alias vi='nvim $1'
alias svi='sudo nvim $1'
alias git-user='git config --global user.name $1'
alias git-mail='git config --global user.email $1'
alias git-creds='git config --global credential.helper $1'
