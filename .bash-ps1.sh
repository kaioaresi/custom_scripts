# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo -e "[\e[31m${BRANCH}${STAT}\e[0m]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

#export PS1="\u@\h_[\[\e[32m\]\W\[\e[m\]]\[\e[31m\]\`parse_git_branch\`\[$(kube_ps1)] [\e[m\]\\$:  "

export PS1='\u@\h [\033[32m\W\033[0m]$(kube_ps1)`parse_git_branch`$ '

source /etc/profile.d/bash_completion.sh
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
source <(kubectl completion bash)
source /home/aresi/Projetos/kube-ps1/kube-ps1.sh
#!/bin/bash

# This file is generated automatically by qb-prompt/generate.py
# It is not recommended to edit it manually

# Apply only if terminal supports 8-bit colors
if [ "${TERM}" != "xterm-256color" ]; then
    echo "qb-prompt: terminal does not support 8-bit colors"
else

    # WG_USER_MARKER
    if [ ${UID} -eq 0 ]; then
        USER_BG="8;5;130m"
        USER_FG="7m"
    else
        USER_BG="8;5;70m"
        USER_FG="7m"
    fi

    export PS2="\[\e[38;5;241m\]\[\e[0m\] "
    export PS3="\[\e[38;5;241m\]\[\e[0m\] "
    export PS4="\[\e[48;5;241m\e[39m\]+\[\e[0m\e[38;5;241m\]\[\e[0m\] "

    export PROMPT_COMMAND='
        ERR_CODE=$?

        # WG_CURRENT_DIR
        STEP=$((${COLUMNS}/8))

        # WG_JOBS_NUMBER
        JOBS_NUM=$(jobs | wc -l)
        if [ ${JOBS_NUM} -gt 0 ]; then
            WG_JOBS_NUMBER_CONTENT="\e[48;5;130m\e[38;5;241m\]\[\e[37m\] ${JOBS_NUM} \[\e[0m"
            WG_JOBS_NUMBER_TRANSITION="\e[38;5;130m\]\["
        else
            WG_JOBS_NUMBER_CONTENT=""
            WG_JOBS_NUMBER_TRANSITION="\e[38;5;241m\]\["
        fi

        # WG_ERROR_CODE
        if [ ${ERR_CODE} -ne 0 ]; then
            WG_ERROR_CODE_CONTENT="\e[48;5;52m${WG_JOBS_NUMBER_TRANSITION}\e[37m\] ${ERR_CODE} \[\e[0m"
            WG_ERROR_CODE_TRANSITION="\e[38;5;52m\]\["
        else
            WG_ERROR_CODE_CONTENT=""
            WG_ERROR_CODE_TRANSITION="${WG_JOBS_NUMBER_TRANSITION}"
        fi

        export PS1="\[\e[4${USER_BG}\e[3${USER_FG}\e[1m\] \\$ \[\e[0m\e[48;5;241m\e[3${USER_BG}\]\[\e[37m\] $(echo "${PWD}" | sed -r "s|^${HOME}|~|;s|^(.{,${STEP}}/)(.{${STEP},})(/.{${STEP},}$)|\1···\3|;s|^/(.)|//\1|;s|(.)/|\1\\\\[\\\\e[38;5;246m\\\\]  \\\\[\\\\e[37m\\\\]|g")  $(git branch 2>/dev/null | grep '"'"'^*'"'"' | colrm 1 2) \[\e[0m${WG_JOBS_NUMBER_CONTENT}${WG_ERROR_CODE_CONTENT}${WG_ERROR_CODE_TRANSITION}\e[0m\] "
    '
fi