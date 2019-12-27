# Change path so that we can access the tools we installed
PATH=$PATH:/root/.local/bin

# Make it look nice on screen
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;35m\]aws-toolbox\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
export LS_OPTIONS='--color=auto'
alias ls='ls $LS_OPTIONS'
