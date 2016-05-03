#!/bin/bash

: ${SSH_GID:=}
: ${SSH_PASSWORD:=$(dd if=/dev/urandom bs=1 count=20 | base64)}
: ${SSH_PATH:=}
: ${SSH_UID:=}
: ${SSH_UMASK:=}
: ${SSH_USERNAME:=user}

mkdir -p /var/run/sshd

if [ -n "$SSH_UMASK" ]; then
	umask $SSH_UMASK
fi

useradd_parameters=""
if [ -n "$SSH_GID" ]; then
	useradd_parameters="$useradd_parameters -g $SSH_GID"
fi
if [ -n "$SSH_UID" ]; then
	useradd_parameters="$useradd_parameters -u $SSH_UID"
fi

$(useradd $useradd_parameters $SSH_USERNAME)
echo -e "$SSH_PASSWORD\n$SSH_PASSWORD" | (passwd --stdin $SSH_USERNAME)
echo Added $SSH_USERNAME with password $SSH_PASSWORD

if [ -n "$SSH_PATH" ]; then
	if [ ! -f "$SSH_PATH" ]; then
		mkdir -p $SSH_PATH
		cp -r /etc/ssh $SSH_PATH
		rm -r /etc/ssh
		ln -s $SSH_PATH /etc/ssh
		/usr/bin/ssh-keygen -A
	else
		rm -r /etc/ssh
		ln -s $SSH_PATH /etc/ssh
	fi
else
	/usr/bin/ssh-keygen -A
fi

exec "$@"
