autoload -Uz compinit
compinit
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle :compinstall filename '/home/cynddl/.zshrc'

PATH=$PATH:/var/lib/gems/1.8/bin

#source ~/.jump_zsh
source /etc/profile

setopt correctall
setopt autocd
setopt extendedglob


autoload -U promptinit
promptinit
prompt walters

alias ls='ls --color=auto'
alias ocaml='rlwrap ocaml'
alias j='autojump'
alias xsu='su -c'


HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

eval "$(lesspipe.sh)"
eval 'c() printf "\33[2J"'

function git-recupere () {git checkout $(git rev-list -n 1 HEAD -- "$1") -- "$1"}
