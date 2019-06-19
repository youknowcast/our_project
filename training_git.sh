#!/bin/sh

i=0
while [ $i -lt 5 ];
do
  git checkout -b greeting
  echo "Hello, GitHub $i" >> hello.txt
  git add .
  git commit -m "change hello.txt $i"
  git push -u origin greeting

  echo "plz pr & merge pr."
  read hoge

  git checkout master
  git pull
  git branch -d greeting
  echo "done. $i"
  i=`$i+1`
done
