# Change path so that we can access the tools we installed
PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root/.local/bin

# Make it look nice on screen
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35m\]aws-toolbox\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
