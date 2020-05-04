parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PROMPT='%9c%{%F{green}%}$(parse_git_branch)%{%F{none}%} $ '
