export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR='nano' #plz dont judge ;)
export PATH=/home/`whoami`/.local/bin/:$PATH

pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic
}

pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}


zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
zstyle ':completion:*' hosts off

DISABLE_MAGIC_FUNCTIONS=true
ANTIGEN_PLUGIN_UPDATE_DAYS=1

source /usr/share/zsh/share/antigen.zsh

antigen use oh-my-zsh

antigen bundle copybuffer
antigen bundle copypath
antigen bundle git
antigen bundle docker
antigen bundle docker-compose
antigen bundle colorize
antigen bundle colored-man-pages
antigen bundle cp
antigen bundle git-prompt
antigen bundle pip
antigen bundle unixorn/autoupdate-antigen.zshplugin
antigen bundle chrissicool/zsh-256color
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle changyuheng/zsh-interactive-cd

antigen theme robbyrussell

antigen apply

alias checkpoint="git add -A && git commit -m 'checkpoint' && git push -u origin"
alias ccheckpoint="checkpoint; git gc --aggressive"
alias inscreen="screen -d -m"
alias kate="inscreen kate"
alias dolphin="inscreen dolphin"
