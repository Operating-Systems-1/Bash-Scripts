#! /bin/bash

read -p "Input username in operating system : " username
read -p "Input the state of the process you are looking for (S|R|Z) : " state

if [[ "$username" == "\n" ]]; then
  ps -eo user,pid,ppid,uid,gid,state
else
  echo "Trying to find processes for user $username"
  user_exists=`cat /etc/passwd | grep ^$username | wc -l`
  if [[ $user_exists -eq 0 ]]; then
    echo "User $username does not exist in the operating system"
    echo "Exiting with 1"
    exit 1
  else
    ps -eo user,pid,ppid,uid,gid,state | grep ^$username > $username.txt
    ps -eo user,pid,ppid,uid,gid,state | grep ^USER > USER.txt
    cat $username.txt >> USER.txt
    cat USER.txt
  fi
fi

if [[ "$state" == "\n" ]]; then
  ps -eo user,pid,ppid,uid,gid,state | grep [S,R,Z]$
else
  echo "Trying to find processes with state $state"
  if [[ "$state" == "S" || "$state" == "R" || "$state" == "Z" ]]; then
    ps -eo user,pid,ppid,uid,gid,state | grep ^$username | grep $state$ > $state.txt
    ps -eo user,pid,ppid,uid,gid,state | grep GID.S$ > STATE.txt
    cat $state.txt >> STATE.txt
    cat STATE.txt
  else
    echo "Process with state $state does not exist in the operating system"
    echo "Exiting with 2"
    exit 2
  fi
fi



    

