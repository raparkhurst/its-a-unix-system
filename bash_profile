#!/usr/nekoware/bin/bash

source ~/.profile


# this line is a duplicate but here for notes!
# this sets <ctrl-c> as the normal interrupt character
stty intr '' echoe


#export PS1='\[\e[0m\]\d\[\e[0m\]\H\[\e[0m\]\W\n\[\e[0m\]'


export ADOBE_FRAMEMAKER_HOME="/usr/local/frame5.5.6/bin"
export ADOBE_PS_HOME="/usr/adobe/Photoshop_3.0.1/bin"
export ADOBE_ILLUSTRATOR_HOME="/usr/adobe/Illustrator_5.5/"
export COREL_WP_HOME="/opt/corel/wp6/wpbin"
export VSLICK_HOME="/opt/slickedit/bin"
export NEKOWARE_HOME="/usr/nekoware"
export SGUG_HOME="/usr/sgug"
export SGI_FREEWARE_HOME="/usr/freeware"

export PATH="${VSLICK_HOME}:${SGUG_HOME}/bin:${SGUG_HOME}/sbin:${NEKOWARE_HOME}/bin:${NEKOWARE_HOME}/sbin:${SGI_FREEWARE_HOME}/bin:${SGI_FREEWARE_HOME}/sbin:${ADOBE_FRAMEMAKER_HOME}:${ADOBE_PS_HOME}:${ADOBE_ILLUSTRATOR_HOME}:${COREL_WP_HOME}:$PATH"
export EDITOR="/usr/nekoware/bin/emacs"

export TERM=xterm


### DEVELOPMENT
export CFLAGS=""



