#! /bin/bash

if [[ $# -ne 4 ]]; then
  echo " "
  echo "Error in parameters"
  echo "Script $0 needs rootfolder, no_of_dbfolders, no_of_datafolders and username"

else

  ROOTFOLDER=$1
  no_of_DBFOLDERS=$2
  no_of_DATAFOLDERS=$3
  USERNAME=$4

  if [[ ! -e $ROOTFOLDER ]]; then
    echo " "
    echo "$ROOTFOLDER does not exist"
    exit 124
  fi

  check_user=`grep ^$USERNAME /etc/passwd | wc -l`

  if [[ $check_user -eq 0 ]]; then
    echo " "
    echo "$USERNAME does not exist"
    exit 125
  fi

  res=$?

  if [[ $res -eq  0 ]]; then

    for ((i=1; i<=$no_of_DBFOLDERS; i++))
    do
        mkdir ./$ROOTFOLDER/dbfolder$i
        res=$?
        if [[ $res -ne 0 ]]; then
          no_of_DBFOLDERS=$(($no_of_DBFOLDERS+1))
        else
          sudo chown $USERNAME:$USERNAME ./$ROOTFOLDER/dbfolder$i
        fi
    done

    for ((j=1; j<=$no_of_DATAFOLDERS; j++))
    do
        mkdir ./$ROOTFOLDER/datafolder$j
        res=$?
        if [[ $res -ne 0 ]]; then
           no_of_DATAFOLDERS=$(($no_of_DATAFOLDERS+1))
        else
          sudo chown $USERNAME:$USERNAME ./$ROOTFOLDER/datafolder$j
        fi
    done
    echo " "
    ls -l $ROOTFOLDER
    echo " "
  fi
fi
