export CLICOLOR=1
export LSCOLORS=dxGxcxdxbxegedabagacad

# Load color info
autoload -Uz colors && colors

# Load version control information (https://www.themoderncoder.com/add-git-branch-information-to-your-zsh-prompt/)
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on branch %b '

# Set up the prompt (with git branch name variable)
setopt PROMPT_SUBST
PROMPT='%{$fg[green]%}%n %{$fg[cyan]%}${PWD/#$HOME/~} %{$fg_bold[blue]%}${vcs_info_msg_0_}%{$reset_color%}%% '
