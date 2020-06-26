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

# # auto-complete
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Yarn Aliases
alias y='yarn'
alias yd='yarn demo'
alias ydc='yarn demo:central'
alias ydm='yarn demo:myseequent'
alias yt='yarn test'
alias ytd='yarn test:dev'
alias yw='yarn watch'
alias yb='yarn build'
alias yci='yarn build:ci'

# Git aliases
alias ga='git add'
alias gst='git status'
alias gc='git commit -v'
alias gl='git pull'
alias gpt='git push && git push --tags'
alias dev='cd ~/development'
alias gd='git diff > ~/development/diff/diff.txt; code ~/development/diff/diff.txt'
alias gdc='git diff --cached > ~/development/diff/diff.txt; code ~/development/diff/diff.txt'
alias gfom='git fetch origin master'
alias go='git open'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh