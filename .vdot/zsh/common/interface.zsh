autoload -U compinit
compinit -d $ZSH_CACHE/completion

autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'

setopt auto_cd
setopt multios
setopt cdablevarS
setopt prompt_subst

PROMPT=$'%{$fg_bold[green]%}%n@%m %{$fg[white]%}[%~]%{$reset_color%} $(git_prompt_info)\
%{$fg_bold[blue]%}->%{$fg[blue]%} %#%{$reset_color%} '
# RPROMPT="%{$fg[gray]%}%D{[%H:%M:%S]}%{$reset_color%}"
