# ================================================================================
# Formatting
# ================================================================================

# LS COLORS
# format - ab=y;1:ab=
# where ab is the code some file type
# y;1 is a key-value pair the key being the formatting type and the value being the color
#
# Y-values
# 0 = default color, 1 = bold, 4 = underlined, 5 = flashing text
LS_COLORS='fi=0:di=1;35:ln=31:bd=4:cd=4;31:or=31:ex=32:*.rpm=90:*.py=33:*.c=33:*.cs=33:*.js=33'
export LS_COLORS

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "[${BRANCH}]"
	else
		echo ""
	fi
}

export PS1="\A \[\e[32m\]\W\[\e[m\] \[\e[35m\]\`parse_git_branch\`\[\e[m\] "
# ================================================================================
# Functionality
# ================================================================================

# autocomplete
bind TAB:menu-complete

# ================================================================================
# Aliases
# ================================================================================
alias ls='ls -F --color --show-control-chars --group-directories-first'
alias ii="explorer.exe"

