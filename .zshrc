# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/dannywieser/.oh-my-zsh"
ZSH_THEME="powerlevel10k"

# # power level 10K
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

plugins=(
  git,
  zsh-autosuggestions
)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

#### Aliases ####

alias dc='docker-compose'
alias mnc='make new-changelog'

# Yarn
alias y='yarn'
alias yd='yarn demo'
alias yt='yarn test'

# Git aliases
alias gco='git checkout'
alias ga='git add'
alias gst='git status'
alias gc='git commit -v'
alias gp='git push'
alias gl='git pull'
alias gpt='git push && git push --tags'
alias dev='cd ~/development'
alias gd='git diff > ~/development/diff/diff.txt; code ~/development/diff/diff.txt'
alias gdc='git diff --cached > ~/development/diff/diff.txt; code ~/development/diff/diff.txt'
alias gfom='git fetch origin master'

# repos
alias dev='cd ~/development'
alias dot='cd ~/dotfiles'
alias b5='cd ~/go/src/go.1password.io/b5'

# Lerna
alias lrs='lerna run start --stream'

export DATABASE_URL=postgresql://fp_user:dev_pass@localhost:5432/fp_database