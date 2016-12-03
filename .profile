# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi


export PATH=/home/danny/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/home/danny/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
export DYLD_LIBRARY_PATH=/home/danny/torch/install/lib:$DYLD_LIBRARY_PATH  # Added automatically by torch-dist


export PATH=/home/danny/torch/install/bin:$PATH  # Added automatically by torch-dist
export LD_LIBRARY_PATH=/home/danny/torch/install/lib:$LD_LIBRARY_PATH  # Added automatically by torch-dist
export DYLD_LIBRARY_PATH=/home/danny/torch/install/lib:$DYLD_LIBRARY_PATH  # Added automatically by torch-dist

#256 Colors
if [ -e /usr/share/terminfo/g/gnome-256color ]; then
        export TERM='gnome-256color'
else
        export TERM='gnome-color'
fi 


. /home/danny/torch/install/bin/torch-activate

#GO
export PATH=$PATH:/usr/local/go/bin

# Timelapse Deflicker
export PATH=$PATH:/home/danny/timelapse-deflicker
