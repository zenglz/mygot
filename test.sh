#!/bin/bash
fileName=$1
#cat $fileName | cat < $fileName
findStr=$2
coutPath=$3
if [ "$fileName"x = ""x ];then
  echo no input file
  exit
fi
if [ "$findStr"x = ""x ];then
  echo str to be found cannot be empty
  exit
fi
if [ "$coutPath"x = ""x ];then
  coutPath="result.txt"
fi
#cat $fileName | grep -n $findStr | tee $coutPath
grep -n $findStr $fileName | tee  $coutPath
echo -n "total num is: " | tee -a $coutPath

#cat $fileName | grep -n $findStr
grep $findStr $fileName | grep -o $findStr | grep -c $findStr | tee -a $coutPath
