#! /bin/bash

if [[ $# -ne 4 ]]; then
  echo "Error in parameters"
  echo "Script $0 needs username, backup data, target backup folder and time forjob scheduling"
  exit 124
fi

username=$1
backup_data=$2
target_backup=$3
at_job=$4

user_exists=`grep ^$username /etc/passwd | wc -l`

at $at_job <<ENDMARKER

res=$?

if [[ $res -ne 0 ]]; then
  echo "at command was executed with errors"
  exit 1
else
  if [[ $user_exists -eq 0 ]]; then
    echo "$username does not exist in the operating system"
    exit 125
  else
    if [[ ! -e $backup_data ]]; then
      echo "$backup_data does not exist in the operating system"
      exit 219
    else
      if [[ -e $target_backup && -f $target_backup ]]; then
        tar -rvf /home/$username/$backup_data.tar /home/$username/$target_backup
      else
        tar -cvf /home/$username/$backup_data/$backup_data.tar /home/$username/$backup_data
        mv /home/$username/$backup_data/$backup_data.tar /home/$username/$target_backup
      fi
    fi
  fi
fi

res=$?

if [[ $res -ne 0 ]]; then
  echo "Could not take backup, errors in tar command"
  exit 125
else
  if [[ ! -f $target_backup ]]; then
    echo " "
    echo "These are the current contents of your backup file"
    echo " "
    tar -tvf /home/$username/$target_backup/$backup_data.tar
  else
    echo " "
    echo "These are the current contents of your backup file"
    tar -tvf /home/$username/$backup_data.tar
    echo " "
  fi
fi
ENDMARKER
