# Kurdshell is created by me, Kurd
# Inspired by Crunch, which was inspired from Dallas
#
# What I thought would be a common pattern for most themes to follow ended up being rare, or not seen at all
# Time, Machine, Path, Git Branch
# And to tie it up nicely, it's colorful too!
#
# Feel free to customize B)

# Color values:
KURD_BRACKET_COLOR="%{$fg[white]%}"
KURD_TIME_COLOR="%{$fg[yellow]%}"
KURD_MACHINE_COLOR="%{$fg[magenta]%}"
KURD_DIR_COLOR="%{$fg[cyan]%}"
KURD_GIT_COLOR="%{$fg[green]%}"
KURD_GIT_DIRTY_COLOR="%{$fg[red]%}"

# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX="$KURD_BRACKET_COLOR:$KURD_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" $KURD_GIT_CLEAN_COLOR✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" $KURD_GIT_DIRTY_COLOR✗"

# Note: HOST and USER will be converted to lowercase, and host will have the ".local" stripped off
# Our elements:
KURD_TIME_="$KURD_BRACKET_COLOR{$KURD_TIME_COLOR%T$KURD_BRACKET_COLOR}%{$reset_color%}"
KURD_MACHINE_=" $KURD_BRACKET_COLOR${(L)USER}$KURD_MACHINE_COLOR@$KURD_BRACKET_COLOR${(L)HOST%.local}$KURD_BRACKET_COLOR:%{$reset_color%}"
KURD_DIR_="$KURD_DIR_COLOR%~\$(git_prompt_info) "
KURD_PROMPT="$KURD_BRACKET_COLOR➭ "

# Put it all together!
PROMPT="$KURD_TIME_$KURD_MACHINE_$KURD_DIR_$KURD_PROMPT%{$reset_color%}"
