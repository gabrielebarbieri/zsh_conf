# PATH
export PATH=~/.local/bin:$PATH
export PATH=~/Qt/Tools/QtCreator/bin:$PATH

# Alias
# alias ls='ls --group-directories-first --color'
# alias lsc='ls --color'
# alias ll='ls -lh'
# alias llc='ll --color'
# alias la='ls -lha'
# alias lac='la --color'

# History
HISTFILE=~/.histfile
HISTSIZE=8192
SAVEHIST=8192
setopt append_history
setopt hist_expire_dups_first
setopt hist_ignore_space
setopt inc_append_history
setopt share_history

# Arrow History Management
autoload -Uz up-line-or-beginning-search
autoload -Uz down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey '\eOA' up-line-or-beginning-search
bindkey '\e[A' up-line-or-beginning-search
bindkey '\eOB' down-line-or-beginning-search
bindkey '\e[B' down-line-or-beginning-search

# Completion
setopt autocd
zstyle :compinstall filename '~/.zshrc'

# folder of all of your autocomplete functions
fpath=($HOME/.zsh-completions $fpath)
autoload -Uz compinit && compinit

# Aldebaran STUFF
export PYTHONPATH=~/pynaoqi:$PYTHONPATH

alias qo='qibuild open'
alias qc='qibuild configure'
alias qm='qibuild make'
alias qd='qibuild deploy'
alias qi='qibuild install'

function qicd {
  p=$(python2 -m 'qicd' $1)
  if [[ $? -ne 0 ]]; then
    return
  fi
  cd ${p}
}

# Need minicom to use serial port on robot
ttyusb() {
  sudo ln -sf /dev/ttyUSB[0-9] /dev/ttyUSBX
  echo `ls -la /dev/ttyUSBX`
  sudo mkdir -pv /etc/minicom
  sudo sh -c 'echo "pu port /dev/ttyUSBX\npu rtscts No" > /etc/minicom/minirc.dfl'
  sudo minicom --color=on
}
