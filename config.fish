#====================== SETTING FISH SHELL ===================================
set -g -x fish_greeting 'Wellcome Back Loc IT'
# set EDITOR "nvim"
export EDITOR='nvim' 
#====================== ALIAS FOR FISH SHELL =================================
#manager fish config
alias rlf='. ~/.config/fish/config.fish'		#reload file config.fish
alias rlt='. ~/.tmux.conf'		#reload file .tmux.conf 
alias fishconfig='vim ~/.config/fish/config.fish'  #setting  alias for fish shell
#jump to file config vim 
alias vimconfig='vim ~/.config/nvim/init.vim'
#jump to file config tmux
alias vimtmux='vim ~/.tmux.conf'
#jump to file workpace and show project
alias showworkpaces='cd ~/Documents/WORKPACES && exa -a'
#jump to file workpace and show project
alias showuit='cd ~/Documents/Dev_web && exa -a'

#jump to file workpace and show project webdev
alias showprojects='cd ~/Documents/WORKPACES/webdev_project && exa -a'
#jump to file workpace and show project webdev
alias myprojects='cd ~/Documents/WORKPACES/MyProject && exa -a'
# run XAMPP
alias runxampp='sudo ~/opt/lampp/manager-linux-x64.run'
#jump to home
alias home='cd ~'
#jump to file config
alias showconfig='home && cd .config && showfile'
#run json sever
alias jsonserver='json-server --watch db.json --port 3004'
#alias helpful
alias e='exit'
alias cls='clear'
alias file='ranger'
alias check='ncdu'
alias h='history'
alias s='sudo'
#manager file
alias cl='clear && exa -x'
alias ..='cd ..'
alias ...='cd ../..'
alias du='du -h'
alias df='df -h'
alias showfile='exa -a -x'
#manaager extension
alias live='live-server'

# Auto open TMUX with base session:
if not set -q TMUX
    set -g TMUX tmux new-session -d -s base
    eval $TMUX
    tmux attach-session -d -t base
end

set -g theme display_user  yes
set -g default_user your_default_username
oh-my-posh --init --shell fish --config '~/.poshthemes/blueish.omp.json' | source
# oh-my-posh --init --shell fish --config https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/v(oh-my-posh --version)/themes/blueish.omp.json | source
