alias gts='git status'

alias gtc='git commit'

alias gtco='git checkout'

alias gta='git add'
alias gtam='git status | grep modified | awk '\''{print $2}'\'' | fzf-tmux -m -p | xargs git add'
alias gtat='git status | grep -A 50 '\''Untracked files:'\'' | awk '\''NR>3 {print last} {last=$0}'\'' | fzf-tmux -m -p | xargs git add'

alias gtl='git log -p'
alias gtls='git log --stat'
alias gtlg='git log --oneline --decorate --all --graph'

alias gtd='git diff'
alias gtdm='git status | grep modified | awk '\''{print $2}'\'' | sed '\''s/\[m//'\'' | fzf-tmux -m -p | xargs git diff'

alias gtpl='git pull'

alias gtph='git branch --show-current | git push origin'

alias gtmt='git mergetool --tool=nvimdiff2'
