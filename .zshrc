#=========================================================
# 
# Autor: Nicola Coretti
# Contact: nico.coretti@googlemail.com
# Version: 1.0
#
#=========================================================


#=========================================================
# Misc
#=========================================================
# if root is 3 minutes idle, an automatic lougout will be done.
if [ "$USERNAME" = "root" ]
    then
        TMOUT=180
    fi

# log logins/logouts of all users
watch=all
# report-fromat of log (watch)
WATCHFMT="%n:%a:%l:%M:%T:%D"


#=========================================================
# Modules
#=========================================================
autoload -U colors && colors

# autocompletion
autoload -Uz compinit && compinit

setopt autolist automenu

zstyle ':completion:*'               menu select=2
zstyle ':completion:*'               use-cache on
zstyle ':completion:*'               chache-path ~/.zsh_cache
zstyle ':completion:*:*kill:*'       menu yes select
zstyle ':completion:*:kill:*'        force-list always    

#=========================================================
# Prompt
#=========================================================
autoload -U colors && colors
autoload -U promptinit && promptinit

autoload -Uz promptinit
promptinit
prompt adam2

#if [ "$HOST" = "nc-gate" ]
#    then
#        PROMPT="%B%{${fg[yellow]}%}%n%B%{${fg[blue]}%}@%{${fg[green]}%}%m:%{${fg[blue]}%}%~%{${fg[cyan]}%} %#%{${fg[white]}%} "
#    fi
#if [ "$HOST" = "nc-base" ]
#    then
#        PROMPT="%B%{${fg[yellow]}%}%n%B%{${fg[magenta]}%}@%{${fg[blue]}%}%m:%{${fg[magenta]}%}%~%{${fg[cyan]}%} %#%{${fg[white]}%} "
#    fi
#if [ "$HOST" = "nc-outpost" ]
#    then
#        PROMPT="%B%{${fg[yellow]}%}%n%B%{${fg[cyan]}%}@%{${fg[blue]}%}%m:%{${fg[cyan]}%}%~%{${fg[yellow]}%} %#%{${fg[white]}%} "
#    fi
#
#if [ "$HOST" = "VIGEMDT11" ]
#    then
#        PROMPT="%B%{${fg[green]}%}%n%B%{${fg[cyan]}%}@%{${fg[yellow]}%}%m:%{${fg[cyan]}%}%~%{${fg[yellow]}%} %#%{${fg[white]}%} "
#    fi
#
#if [ "$USERNAME" = "root" ]
#    then
#        PROMPT="%B%{${fg[red]}%}%n%B%{${fg[yellow]}%}@%{${fg[${hostcolor}]}%}%m:%{${fg[green]}%}%~%{${fg[cyan]}%} %#%{${fg[white]}%} "
#    fi


#=========================================================
# Misc-Options
#=========================================================
# change dirs without cd / path is sufficient
setopt auto_cd 
# if cd would fail because the arg is no dir, try to expand the argument as if it was called the ~expression way
setopt cdable_vars
# make cd push the old directory to the dir stack
setopt auto_pushd
# do not push dups on the dir stack
setopt pushd_ignore_dups
#make pushd with no argument act like pushd $(HOME)
setopt pushd_to_home
setopt always_to_end
setopt auto_list
setopt auto_name_dirs
setopt complete_aliases
setopt list_types

# directory stack options
setopt autopushd
setopt pushdminus
setopt pushdsilent
setopt pushdtohome

#=========================================================
# History
#=========================================================
# filename/location where the history will be saved
HISTFILE=~/.zsh_history

# maximum size of the history
HISTSIZE=1000
SAVEHIST=1000

setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
# after a command is executed it will be appended to $HISTFILE
setopt inc_append_history
# always import new commands from $HISTFILE
setopt share_history
# if the commandline start with a whitespace, don't add it to history
setopt hist_ignore_space
# when exiting, append history enries to $HISTFILE, rather than replacing the old file; this is the default
setopt append_history
# enable '!' history expansion
setopt bang_hist


#=========================================================
# Job-Control
#=========================================================
setopt auto_resume
# send SIGHUP to background processes on exit
setopt hup
# report status of background jobs immediately
setopt notify
# report status of bg-jobs if exiting a shell with job control enabled
setopt check_jobs 


#=========================================================
# Aliases
#=========================================================
#-- ls --#
alias ls='ls -G -F --color=auto'
alias ll='ls -all --color=auto'

#-- grep --#
# colorize the output of the grep command
alias grep='grep --color=auto'
alias psgrep='ps aux | head -n 1 && ps aux | grep'

# directory stack / history
alias dh='dirs -v'


#=========================================================
# Suffix-Aliases
#=========================================================
#-- text files --#
alias -s txt=editor
alias -s tex=editor

#-- imgage files --#
alias -s png=img-app
alias -s gif=img-app
alias -s jpg=img-app

#-- audio files --#
alias -s mp3=audio-app

#-- video files --#
alias -s mpeg=video-app


#=========================================================
# Global-Aliases
#=========================================================
#-- editor --#
alias -g editor='vim'

#-- img-app --#
alias -g img-app=''

#-- audio-app --#
alias -g audio-app='rhythmbox'

#-- video-app --#
alias -g video-app='vlc'

#--  apt aliases --# 
alias -g apt-search='apt-cache search'
alias -g apt-install='apt-get install'

#-- hostname aliases --#
#-- ssh tunnel aliases --#
alias hska_ssh="ssh coni1011@login.hs-karlsruhe.de -D 127.0.0.1:9999"

#=========================================================
# Functions
#=========================================================
#-- Proxy stuff --#
# unset proxy settings 
noproxy(){
    unset http_proxy
    unset HTTP_PROXY
    unset ftp_proxy
    unset SOCKS_HOST

    echo -e"\nProxy enviroment variables are unset ..."
}

# set proxy settings for hochschule
proxyhska(){
    echo -n "username: "
    read username
    echo -n "password:"
    read -s password

    export http_proxy="http://$username:$password@proxy.hs-karlsruhe.de:8888/"
    export HTTP_PROXY="http://$username:$password@proxy.hs-karlsruhe.de:8888/"
    export ftp_proxy="http://$username:$password@proxy.hs-karlsruhe.de:8888/"
    export SOCKS_HOST="http://$username:$password@proxy.hs-karlsruhe.de:1080/"

    echo "Proxy enviroment variables are set ..."
}

# antlr setup
export CLASSPATH=".:/usr/local/lib/antlr-4.0-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.0-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Use vim keybindings for shell
bindkey -v
