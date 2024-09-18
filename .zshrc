# zmodload zsh/zpro
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'
export VISUAL='nvim'
export DISABLE_AUTO_TITLE="true"
export AUTO_TITLE=false
export LANG=en_US.UTF-8
export HUSKY=0
export PATH="/Users/acelakov/scripts:$PATH"
export PATH="/Users/acelakov/dev/tmux:$PATH"

alias vim=nvim
alias v=nvim
alias lla='ls -la'
alias cr='code . -r'
alias c.='code .'
alias glg='git lg'
alias gc-='git checkout -'
alias gci="git ci"
alias gti="sl"
alias grc='gh repo clone'
alias gpc="gh pr checkout"
alias ta='tmux attach'
alias td='tmux detach'
alias vimconf='cd ~/.config/nvim && nvim'
alias zshconf='vim ~/.zshrc && source ~/.zshrc'
alias tmuxconf='vim ~/.tmux.conf && tmux source ~/.tmux.conf'
alias v=vim
alias p=pnpm
alias nvimdiff='nvim -d'
alias kkill='sudo kill -9'
alias grep='ggrep'
alias podman-compose='podman compose'
alias docker=podman

alias cleaninstall="rm -rf node_modules && npm i"
alias rh="sh ~/rh.sh"
alias nrs="npm run start:proxy"
alias nirs="cleaninstall && npm run start:proxy"
alias nrsb="npm run start:proxy:beta"
alias nirsb="cleaninstall && npm run start:proxy:beta"
alias ni="npm i"
alias ns="npm start"
alias nsp="npm run start:proxy"
alias nspp="PROXY=true npx fec dev --clouddotEnv stage"
alias nispp="cleaninstall && nspp"

# git lg
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
# git ci
git config --global alias.ci '!git checkout $(git branch -a | fzf | xargs)'


bindkey -s ^f "tmux-sessionizer\n"

# pyenv
# eval "$(pyenv init -)"
# if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# pnpm
export PNPM_HOME="/Users/acelakov/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
if [ -d "/opt/homebrew/opt/ruby/bin" ]; then
  export PATH=/opt/homebrew/opt/ruby/bin:$PATH
  export PATH=`gem environment gemdir`/bin:$PATH
fi


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# zprof
