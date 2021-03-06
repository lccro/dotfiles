# from here: https://camo.githubusercontent.com/cdb2f2e986c564b515c0c698e6c45b4ab5d725a9/687474703a2f2f692e696d6775722e636f6d2f776136363678672e706e67
GRUVBOX_1_BG=$BG[235]
GRUVBOX_1_RED=$FG[124]
GRUVBOX_1_GREEN=$FG[106]
GRUVBOX_1_YELLOW=$FG[172]
GRUVBOX_1_BLUE=$FG[66]
GRUVBOX_1_PURPLE=$FG[132]
GRUVBOX_1_AQUA=$FG[72]
GRUVBOX_1_GRAY=$FG[246]

GRUVBOX_2_GRAY=$FG[245]
GRUVBOX_2_RED=$FG[167]
GRUVBOX_2_GREEN=$FG[142]
GRUVBOX_2_YELLOW=$FG[214]
GRUVBOX_2_BLUE=$FG[109]
GRUVBOX_2_PURPLE=$FG[175]
GRUVBOX_2_AQUA=$FG[108]
GRUVBOX_2_FG=$FG[223]

GRUVBOX_3_BG0_H=$BG[234]
GRUVBOX_3_BG0=$BG[235]
GRUVBOX_3_BG1=$BG[237]
GRUVBOX_3_BG2=$BG[239]
GRUVBOX_3_BG3=$BG[241]
GRUVBOX_3_BG4=$BG[243]
GRUVBOX_3_GRAY=$FG[245]
GRUVBOX_3_ORANGE=$FG[166]

GRUVBOX_4_BG0_S=$BG[236]
GRUVBOX_4_FG4=$FG[246]
GRUVBOX_4_FG3=$FG[248]
GRUVBOX_4_FG2=$FG[250]
GRUVBOX_4_FG1=$FG[223]
GRUVBOX_4_FG0=$FG[229]
GRUVBOX_4_ORANGE=$FG[208]

MAGENTA=$fg[magenta]
BLUE=$fg[blue]
# GREEN=$fg[green]
# RED=$fg[red]
# YELLOW=$fg[yellow]
# CYAN=$fg[cyan]

USER=$GRUVBOX_1_GREEN
MACHINE=$GRUVBOX_1_PURPLE
PWD_COLOR=$GRUVBOX_4_ORANGE
MY_RVM_COLOR=$GRUVBOX_3_ORANGE

GREEN=$GRUVBOX_1_GREEN
RED=$GRUVBOX_1_RED
YELLOW=$GRUVBOX_1_YELLOW
CYAN=$GRUVBOX_4_FG0

local user='%{$USER%}%n%{$reset_color%}@%{$MACHINE%}%m%{$reset_color%}'
local pwd='%{$PWD_COLOR%}%~%{$reset_color%}'
local rvm=''
if which rvm-prompt &> /dev/null; then
  rvm='%{$MY_RVM_COLOR%}‹$(rvm-prompt i v g)›%{$reset_color%}'
else
  if which rbenv &> /dev/null; then
    rvm='%{$MY_RVM_COLOR%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
  fi
fi
local return_code='%(?..%{$RED%}%? ↵%{$reset_color%})'
local git_branch='$(git_prompt_status)%{$reset_color%}$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$GREEN%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$GREEN%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$BLUE%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$RED%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$MAGENTA%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$YELLOW%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$CYAN%} ✭"

PROMPT="${user} ${pwd}$ "
RPROMPT="${return_code} ${git_branch} ${rvm}"
