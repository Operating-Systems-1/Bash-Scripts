#! /bin/bash

if [[ $# -ne 3 ]]; then
  echo " "
  echo "Error in parameters"
  echo "Script $0 needs two names of existed directories and a new one"
  exit 124
fi

folder1=$1
folder2=$2
new_folder=$3

if [[ ! -e $folder1 && ! -e $folder2 ]]; then
  echo "Error in compare of the two directories"
  echo "One or both do not exist"
  exit 125
else
  num_files_folder1=`diff $folder1 $folder2 | grep ^Only.in.$folder1 | wc -l`
  echo " "
  echo "Number of files which exist in $folder1, but do not exist in $folder2 : $num_files_folder1"
  echo " "
  diff $folder1 $folder2 | grep ^Only.in.$folder1
  echo " "
  echo "--------------------------------------------------------------------------"
  echo " "
  num_files_folder2=`diff $folder1 $folder2 | grep ^Only.in.$folder2 | wc -l`
  echo "Number of files which exist in $folder2, but do not exist in $folder1 : $num_files_folder2"
  echo " "
  diff $folder1 $folder2 | grep ^Only.in.$folder2
  echo " "
fi

  for i in `ls $folder1 | grep -v ^hardlink`
  do
    for j in `ls $folder2 | grep -v ^hardlink`
    do
      if [ -f ./$folder1/$j ]; then
        mv ./$folder1/$j $new_folder
        ln ./$new_folder/$j ./$folder1/hardlink_$j
        ln ./$new_folder/$j ./$folder2/hardlink_$j
        rm ./$folder2/$j
      fi
    done
  done

  echo "--------------------------------------------------------------------------"
  echo " "
  var1=`ls -s $folder1 | grep ^total`
  echo "Overall block size of the files which exist in $folder1, but not in $folder2 : $var1"
  echo " "
  var2=`ls -s $folder2 | grep ^total`
  echo "Overall block size of the files which exist in $folder2, but not in $folder1 : $var2"
  echo " "
  echo "--------------------------------------------------------------------------"
  echo " "
  var3=`ls $new_folder | grep ^. | wc -l`
  echo "Number of common files of $folder1 and $folder2 : $var3"
  echo " "
  var4=`ls $new_folder | grep ^.`
  echo "Common files of $folder1 and $folder2 :

$var4"
  echo " "
  var5=`ls -s $new_folder | grep ^total`
  echo "Overall block size of common files of $folder1 and $folder2 : $var5"
  echo " "
  echo "--------------------------------------------------------------------------"
  echo "$folder1"
  echo " "
  ls -lis $folder1
  echo " "
  echo "--------------------------------------------------------------------------"
  echo "$folder2"
  echo " "
  ls -lis $folder2
  echo " "
  echo "--------------------------------------------------------------------------"
  echo "$new_folder"
  echo " "
  ls -lis $new_folder
  echo " "