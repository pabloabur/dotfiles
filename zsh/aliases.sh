alias gts='git status'
alias gtc='git commit -m'
alias gtco='git checkout'
alias gta='git add'
alias gtam='git status | tee /dev/tty | grep modified | awk '{print $2}' | dmenu | xargs git add'
alias gtat="git status | grep -A 50 '(use ' | awk 'NR>2 {print last} {last=$0}'"
alias gtpl='git pull'
alias gtph='git push origin'
alias gtmt='git mergetool --tool=nvimdiff2'