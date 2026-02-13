#! /bin/bash

if [[ $# -ne 3 ]]; then
  echo "Error in parameters"
  echo "Script $0 needs username, backup data and target backup folder."
  exit 124
fi

username=$1
backup_data=$2
target_backup=$3

if [[ -e $target_backup && -f $target_backup ]]; then
  tar -rvf /home/$username/$backup_data.tar /home/$username/$target_backup
else
  tar -cvf /home/$username/$backup_data/$backup_data.tar /home/$username/$backup_data
  mv /home/$username/$backup_data/$backup_data.tar /home/$username/$target_backup
fi

res=$?
if [[ $res -ne 0 ]]; then
  echo "Could not take backup, errors in tar command"
  exit 125
fi

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
 
