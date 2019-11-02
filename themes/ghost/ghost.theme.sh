#!/usr/bin/env bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

function prompt_command() {
  term=$(grep '[0-9]' /sys/class/thermal/thermal_zone0/temp)
  temp=`echo "scale=1;($term/1000)"|bc`"°"
  PS1="${purple}\u@${purple}\h${reset_color}:${green}\w${blue}|$(clock_prompt)|$blue|$temp|${green}$(scm_prompt_info)${green}# ${reset_color}"
}

THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"$blue"}

PROMPT_COMMAND=prompt_command;
