#! /bin/bash

if [[ $# -ne 2 ]]; then
  echo "Error in parameters"
  echo "Script $0 needs permissions in octal and number of days"
  exit 125
fi

num_octal_per=$1
num_days=$2
all_files_subdir=0

while (true)
do
  echo " "
  echo "============================================================="
  echo " "
  read -p "Type the name of a directory : " name_dir
  echo " "
  if [[ ! -e $name_dir ]]; then
    echo " "
    echo "Directory does not exist"
    echo " "
    echo "============================================================="
    exit 124
  else
    errors1=0
    num_files1=`find $name_dir -type f -perm $num_octal_per | wc -l`
    echo "-------------------------------------------------------------"
    echo "OPERATION 1"
    echo " "
    echo "Number of expectedly printed files : $num_files1"
    echo " "
    find $name_dir -type f -perm $num_octal_per
    errors1=$?
    echo " "
    
    if [[ $errors1 -ne 0 ]]; then
      echo "Find was executed with errors"
      echo "Give new parameters"
      echo " "
      exit 301
    fi
    
    errors2=0
    num_files2=`find $name_dir -type f -mtime $num_days | wc -l`
    echo "-------------------------------------------------------------"
    echo "OPERATION 2"
    echo " "
    echo "Number of expectedly printed files : $num_files2"
    echo " "
    find $name_dir -type f -mtime $num_days
    errors2=$?
    echo " "

    if [[ $errors2 -ne 0 ]]; then
      echo "Find was executed with errors"
      echo "Give new parameters"
      echo " "
