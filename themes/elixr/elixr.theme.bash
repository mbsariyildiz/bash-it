#!/usr/bin/env bash

SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" ${green}| "
SCM_THEME_PROMPT_SUFFIX="${green} |"
SCM_NONE_CHAR='◐ '
SCM_GIT_SHOW_MINIMAL_INFO=true
GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX=" d|"

BOLD="\[\e[1m\]"

function prompt_command() {
    PS1="${bold_cyan}$(scm_prompt_char_info)$(virtualenv_prompt) ${yellow}${CONDA_DEFAULT_ENV} ${bold_cyan}| \w \n> ${reset_color}${normal}"
}

safe_append_prompt_command prompt_command
