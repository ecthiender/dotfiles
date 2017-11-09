
# Prompt info for kubectl
k8s_prompt_info() {
  echo "%{$fg_bold[blue]%}\u26EF%{$reset_color%} %{$fg[cyan]%}$(kubectl config current-context)"
}

# Theme for vi-mode
MODE_INDICATOR="%{$fg_bold[yellow]%}\u2318%{$reset_color%}"

#PROMPT='%{$fg[yellow]%}%c%{$reset_color%} $(git_prompt_info)%{$fg[yellow]%}➤ %{$reset_color%}'
PROMPT='%{$fg[yellow]%}%c ➤ %{$reset_color%}'

#RPROMPT='%{$fg[$NCOLOR]%}%p $(git_prompt_info)%{$reset_color%}'
RPROMPT='$(vi_mode_prompt_info)%{$reset_color%} $(git_prompt_info)%{$reset_color%} $(k8s_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[red]%}\uE0A0%{$fg[cyan]%}:"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

#ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}git:(%{$fg[red]%}"
#ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
#ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗"
#ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

# See http://geoff.greer.fm/lscolors/
export LSCOLORS="exfxcxdxbxbxbxbxbxbxbx"
export LS_COLORS="di=34;40:ln=35;40:so=32;40:pi=33;40:ex=31;40:bd=31;40:cd=31;40:su=31;40:sg=31;40:tw=31;40:ow=31;40:"
