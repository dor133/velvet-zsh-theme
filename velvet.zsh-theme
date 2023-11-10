### UTILS
current_time() {
    echo "%*"
}

# current directory
directory() {
    echo "%B%{$FG[221]%}%~%{$reset_color%}%b"
}

# purple username
username() {
    echo "%B%{$fg[magenta]%}%n%{$reset_color%}%b"
}

# prompt
prompt() {
    arrow="%B\u276f%b"
    echo "%(?:%{$fg[white]%}$arrow :%{$fg[red]%}$arrow )"
}

# git prompt info
git_local_info() {
    if [ "$(git_prompt_info)" ]
    then
        echo "<%{$FG[036]%}$(git_prompt_info)%{$reset_color%}>"
    fi
}

### CONFIG
# prompt config
PROMPT='%F{189}╭─($(username))─[$(directory)] $(git_local_info)
%F{189}╰%f$(prompt)'
RPROMPT='$(current_time)'

# git prompt config
ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✘%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔%{$reset_color%}"
