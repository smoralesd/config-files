# Machine name.
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo $HOST
}

# you need to have acpi installed. On ubuntu: sudo apt-get install acpi
function battery_charge {
    # Battery 0: Discharging, 94%, 03:46:34 remaining
    bat_percent=`acpi | awk -F ':' {'print $2;'} | awk -F ',' {'print $2;'} | sed -e "s/\s//" -e "s/%.*//"`

    if [ $bat_percent -lt 20 ]; then cl='%F{red}'
    elif [ $bat_percent -lt 50 ]; then cl='%F{yellow}'
    else cl='%F{green}'
    fi

    filled=${(l:`expr $bat_percent / 10`::▸:)}
    empty=${(l:`expr 10 - $bat_percent / 10`::▹:)}
    echo $cl$filled$empty'%F{default}'
}

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# VCS
YS_VCS_PROMPT_PREFIX1=" %{$fg[white]%}on%{$reset_color%} "
YS_VCS_PROMPT_PREFIX2=":%{$fg[cyan]%}"
YS_VCS_PROMPT_SUFFIX="%{$reset_color%}"
YS_VCS_PROMPT_DIRTY=" %{$fg[red]%}x"
YS_VCS_PROMPT_CLEAN=" %{$fg[green]%}o"

# VCS info.
local vcs_info='$(vcs_super_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="${YS_VCS_PROMPT_PREFIX1}git${YS_VCS_PROMPT_PREFIX2}"
ZSH_THEME_GIT_PROMPT_SUFFIX="$YS_VCS_PROMPT_SUFFIX"
ZSH_THEME_GIT_PROMPT_DIRTY="$YS_VCS_PROMPT_DIRTY"
ZSH_THEME_GIT_PROMPT_CLEAN="$YS_VCS_PROMPT_CLEAN"

ZSH_VCS_PROMPT_ENABLE_CACHING='true'

# Prompt format: \n # USER at MACHINE in DIRECTORY on (git|svn|hg):BRANCH STATE [TIME] \n $
PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%{$fg[cyan]%}%n \
%{$fg[white]%}at \
%{$fg[green]%}$(box_name) \
$(battery_charge) \
%{$fg[white]%}[%*]
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%} \
${vcs_info}
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"

if [[ "$USER" == "root" ]]; then
PROMPT="
%{$terminfo[bold]$fg[blue]%}#%{$reset_color%} \
%{$bg[yellow]%}%{$fg[cyan]%}%n%{$reset_color%} \
%{$fg[white]%}at \
%{$fg[green]%}$(box_name) \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}${current_dir}%{$reset_color%} \
${vcs_info} \
$(battery_charge) \
%{$fg[white]%}[%*]
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
fi

