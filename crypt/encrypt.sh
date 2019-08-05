#!/bin/bash

t=$1

if [[ $2 != "" ]]
then
a=$(echo $2 | cut -c -1)
if [[ $2 -gt 9 ]]
then
b=$(echo $2 | rev | cut -c -2 | rev | cut -c -1)
if [[ $2 -gt 99 ]]
then
c=$(echo $2 | rev | cut -c -1 | rev)
fi
fi
fi
clear
if [[ $a == "" ]]
then
echo "Write a number between 1 and 10"
read a
fi
if [[ $b == "" ]]
then
echo "Another number between 1 and 10"
read b
fi
if [[ $c == "" ]]
then
echo "And an another number between 1 and 10"
read c
fi

if [[ $t == "" ]]
then
ls -l
echo "File or Folder"
read t
fi
clear
ccrypt -dr /etc/encrypt/keys -k /etc/encrypt/key/key.txt > /dev/null

if [[ $c == 0 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key0.txt > /dev/null
elif [[ $c == 1 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key1.txt > /dev/null
elif [[ $c == 2 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key2.txt > /dev/null
elif [[ $c == 3 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key3.txt > /dev/null
elif [[ $c == 4 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key4.txt > /dev/null
elif [[ $c == 5 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key5.txt > /dev/null
elif [[ $c == 6 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key6.txt > /dev/null
elif [[ $c == 7 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key7.txt > /dev/null
elif [[ $c == 8 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key8.txt > /dev/null
else
ccrypt -dr $t -k /etc/encrypt/keys/key9.txt > /dev/null
fi

if [ ! -d $t ]
then
t=$(echo $t | rev | cut -c 5- | rev )
fi

if [[ $b == 0 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key0.txt > /dev/null
elif [[ $b == 1 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key1.txt > /dev/null
elif [[ $b == 2 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key2.txt > /dev/null
elif [[ $b == 3 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key3.txt > /dev/null
elif [[ $b == 4 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key4.txt > /dev/null
elif [[ $b == 5 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key5.txt > /dev/null
elif [[ $b == 6 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key6.txt > /dev/null
elif [[ $b == 7 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key7.txt > /dev/null
elif [[ $b == 8 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key8.txt > /dev/null
else
ccrypt -dr $t -k /etc/encrypt/keys/key9.txt > /dev/null
fi

if [ ! -d $t ]
then
t=$(echo $t | rev | cut -c 5- | rev )
fi

if [[ $a == 0 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key0.txt > /dev/null
elif [[ $a == 1 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key1.txt > /dev/null
elif [[ $a == 2 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key2.txt > /dev/null
elif [[ $a == 3 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key3.txt > /dev/null
elif [[ $a == 4 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key4.txt > /dev/null
elif [[ $a == 5 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key5.txt > /dev/null
elif [[ $a == 6 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key6.txt > /dev/null
elif [[ $a == 7 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key7.txt > /dev/null
elif [[ $a == 8 ]]
then
ccrypt -dr $t -k /etc/encrypt/keys/key8.txt > /dev/null
else
ccrypt -dr $t -k /etc/encrypt/keys/key9.txt > /dev/null
fi

ccrypt -er /etc/encrypt/keys -k /etc/encrypt/key/key.txt > /dev/null

if [ ! -d $t ]
then
t=$(echo $t | rev | cut -c 5- | rev )
fi

ls -l $t
echo "--------"
echo "Finished"
