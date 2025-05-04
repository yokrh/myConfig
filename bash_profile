### !! MAC bash_profile !!
## PATH

# nvm
source ~/.nvm/nvm.sh

# nanndakke...
# ?
test -r /sw/bin/init.sh && . /sw/bin/init.sh
export PATH="/usr/local/bin:$PATH"

# rbenv
#export RBENV_ROOT=/usr/local/var/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
export RBENV_ROOT="$HOME/.rbenv"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# pyenv virtualenv
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# pip
export PATH="$HOME/Library/Python/2.7/bin:$PATH"

# go
export GOPATH=${HOME}/go
export PATH=$GOPATH/bin:$PATH

## ALIAS
#alias ll='ls -alF'
alias tf=terraform

## COLOR
# lsに色を付ける => http://jmblog.jp/archives/307
export CLICOLOR=1
export LSCOLORS=dxGxcxdxbxegedabagacad
# プロンプトも色を付ける
#export PS1="\[\e[0;32m\]\u@\h:\[\e[0;33m\]\w\[\e[00m\]\$ "
# プロンプトも色を付けてgitブランチ名も付ける
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}
function prompt {
  local  BLUE="\[\e[1;34m\]"
  local  RED="\[\e[1;31m\]"
  local  GREEN="\[\e[1;32m\]"
  local  WHITE="\[\e[00m\]"
  local  GRAY="\[\e[1;37m\]"
  export PS1="\[\e[0;32m\]\u@\h:\[\e[0;33m\]\w${BLUE}\$(parse_git_branch)${WHITE}$ "
}
prompt



# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/yoka/google-cloud-sdk/path.bash.inc' ]; then . '/Users/yoka/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/yoka/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/yoka/google-cloud-sdk/completion.bash.inc'; fi
