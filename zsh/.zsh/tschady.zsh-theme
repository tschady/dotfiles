# Ruby
ZSH_THEME_RVM_PROMPT_PREFIX="%{$FG[000]%}("
ZSH_THEME_RVM_PROMPT_SUFFIX=")%{$reset_color%}"
ZSH_THEME_RVM_PROMPT_OPTIONS=(i v g s)  # skip patch, show 'system'

# git
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg_bold[blue]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg_bold[blue]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} ✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ?%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[cyan]%} ✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_MODIFIED=" ✹"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_STASHED=""
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SHA_BEFORE="%{$FG[000]%}"
ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[magenta]%} ↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[magenta]%} ↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg_bold[magenta]%} ↕%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD_REMOTE="%{$fg_bold[magenta]%} ↑%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_BEHIND_REMOTE="%{$fg_bold[magenta]%} ↓%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_REMOTE="%{$fg_bold[magenta]%} ↕%{$reset_color%}"

# prompt vars

EARTH='☷'
MOUNTAIN='☶'
WIND='☴'
HEAVEN='☰'
YINYANG='☯︎'
SHINTO_SHRINE='⛩'

local DEFAULT_COLOR=$fg[cyan]
local marker="%{$DEFAULT_COLOR%}${EARTH}${MOUNTAIN}${WIND}${HEAVEN}${YINYANG}%{$reset_color%}"
# <tws> TODO: change color/emphasis if root
local user="%{$DEFAULT_COLOR%}%n%{$reset_color%}"
local host="%{$DEFAULT_COLOR%}@%m%{$reset_color%}"
local return_code="%(?..%{$fg_bold[red]%} ☹ %?%{$reset_color%})"
local prompt_char="%{$DEFAULT_COLOR%}%#%{$reset_color%}"
local pwd="[%3~]"
local time="%*"
# local ASDF="$HOME/.asdf/bin/asdf"
# local ruby_version=$($ASDF current ruby | cut -f 1 -d " ")
# local node_version=$($ASDF current nodejs | cut -f 1 -d " ")

# prompts
PROMPT='${marker} ${user}${host}$(git_prompt_info)${return_code} ${prompt_char} '
# RPS1='R(${ruby_version}) N(${node_version}) ${pwd} ${time}'
RPS1='${pwd} ${time}'
