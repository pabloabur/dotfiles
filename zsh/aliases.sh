alias gts='git status'
alias gtc='git commit -m'
alias gtco='git checkout'
alias gta='git add'
alias gtam='git status | tee /dev/tty | grep modified | awk '\''{print $2}'\'' | dmenu-mac | xargs git add'
alias gtat='git status | grep -A 50 '\''Untracked files:'\'' | awk '\''NR>3 {print last} {last=$0}'\'' | dmenu-mac | xargs git add'
alias gtd='git status | tee /dev/tty | grep --color=always modified | awk '\''{print $2}'\'' | dmenu-mac | xargs git diff'
alias gtpl='git pull'
alias gtph='git push origin'
alias gtmt='git mergetool --tool=nvimdiff2'