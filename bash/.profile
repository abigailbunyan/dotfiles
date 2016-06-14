# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

GPG_TTY=$(tty)
export GPG_TTY

if which vim > /dev/null ; then
    export VISUAL=vim
    export EDITOR=vim
fi
# Ubuntu make installation of Ubuntu Make binary symlink
PATH=/home/abigail/.local/share/umake/bin:$PATH
# Add pip local install directory
PATH="$HOME/.local/bin:$PATH"
