# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls -a --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Custom aliases
alias yazi="~/.local/bin/yazi-persist-cwd.sh"
alias nmtui="NEWT_COLORS=\"$(<~/.config/nmtui/palette)\" nmtui"

# Custom prompt
PROMPT='%F{4}%5~%f %B%F{15}%#%f%b '

# Remove inverted % sign at end of partial lines
PROMPT_EOL_MARK=''

# Run fastfetch on start
# fastfetch
