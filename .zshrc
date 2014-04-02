# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DISABLE_UPDATE_PROMPT=true

ZSH_THEME="powerline"
POWERLINE_DISABLE_RPROMPT="true"

POWERLINE_HIDE_HOST_NAME="true"


plugins=(git)

source $ZSH/oh-my-zsh.sh
# path
export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin:/usr/local/share/npm/bin

# Variables
export EDITOR='vim'

# zsh shell
alias sc="vi ~/.zshrc"
alias ss='source $HOME/.zshrc'

alias trim="tr -d '\n'"
alias pb='pbcopy'

# ruby
alias cd-gem='$HOME/.rbenv/versions/2*/lib/ruby/gems/2.0.0/gems'
eval "$(rbenv init -)"

# nginx
alias nc='vi /usr/local/etc/nginx/nginx.conf'
alias nr='sudo nginx -s reload'
alias ns='sudo nginx -s stop'

# tmux
alias t="tmux a"
alias tb="tmux list-buffer"
alias tba="tmux set-buffer"


# Kerl init
source $HOME/erlang/r15b01/activate

# quickfolder
alias cd-c='cd $HOME/Lin/Codes/C'
alias cd-ember='cd $HOME/Codes/Ember'
alias cd-ruby='cd $HOME/Codes/Ruby'
alias cd-projects='cd $HOME/Codes/Projects'

# coffeescript2

# git
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
alias gl="git log --graph --all --pretty=format:'[%C(blue)%h%Creset] -%C(magenta)%d%Creset %C(normal dim)%an%Creset (%C(green)%cr%Creset): %s' --abbrev-commit --date=relative"
alias ga='git add '
alias gau='git add -u'
alias gaa='git add --all'
alias go='git checkout '
# alias git=hub

# ssh
ssh-add ~/.ssh/bit ~/.ssh/markson.pem > /dev/null 2>&1
alias ssh-me='ssh yozloy@markson.me'

# alias power-on-do-markson-me='curl https://api.digitalocean.com/droplets/1281524/power_on/?client_id=b41c50767f838258a8a8231433f9d20c&api_key=180884f49a255f9b5d857bc5fae1bb69'
alias pwer-on-do-markson-me='curl https://api.digitalocean.com/droplets/1281524/power_on/?client_id=b41c50767f838258a8a8231433f9d20c&api_key=180884f49a255f9b5d857bc5fae1bb69'

