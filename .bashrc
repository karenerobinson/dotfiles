# ~/.bashrc: executed by bash(1) for non-login shells.

# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# for running aws cli here
export PATH=/home/karrob5/.local/bin/:$PATH

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac


# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# aliases from fast.ai machine learning course
## added | tr -d \"\"\" to the export statements, to make the commands robust to aws being in json mode and adding quotes. 
alias aws-get-p2='export instanceId=`aws ec2 describe-instances --filters "Name=instance-state-name,Values=stopped,Name=instance-type,Values=p2.xlarge" --query "Reservations[0].Instances[0].InstanceId" | tr -d \"\"\"` && echo $instanceId'

alias aws-start='aws ec2 start-instances --instance-ids $instanceId && aws ec2 wait instance-running--instance-ids $instanceId && export instanceIp=`aws ec2 describe-instances --filters "Name=instance-id,Values=$instanceId" --query "Reservations[0].Instances[0].PublicIpAddress"` && echo $instanceIp'

alias aws-ip='export instanceIp=`aws ec2 describe-instances --filters "Name=instance-id,Values=$instanceId" --query "Reservations[0].Instances[0].PublicIpAddress" | tr -d \"\"\"` && echo $instanceIp'

alias aws-ssh='ssh -i /home/krobinso/.ssh/aws-key-fast-ai.pem ubuntu@$instanceIp'

alias aws-stop='aws ec2 stop-instances --instance-ids $instanceId'
