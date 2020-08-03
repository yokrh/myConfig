# Load color info
autoload -Uz colors && colors

## https://www.themoderncoder.com/add-git-branch-information-to-your-zsh-prompt/
# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }
# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b '
# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
#PROMPT='%n in ${PWD/#$HOME/~} ${vcs_info_msg_0_} > '

PROMPT='%{$fg[green]%}%n %{$fg[yellow]%}${PWD/#$HOME/~} %{$fg_bold[blue]%}${vcs_info_msg_0_}%{$reset_color%}%% '
