#!/bin/bash

t=$1

#apt-get update
#apt-get install ccrypt
clear

if [ ! -d /bin/encrypt ]
then
cp encrypt.sh /bin/encrypt
cp decrypt.sh /bin/decrypt
chmod +x /bin/encrypt
chmod +x /bin/decrypt
fi

echo "Write a number between 1 and 10"
read a
echo "Another number between 1 and 10"
read b
echo "And an another number between 1 and 10"
read c


if [ ! -d /etc/encrypt/ ]
then
mkdir /etc/encrypt/
mkdir /etc/encrypt/dontremove/
if [ ! -f /etc/encrypt/dontremove/key0.txt ]
then
strings /dev/urandom |tr -dc A-Za-z0-9 | head -c5000; echo > /etc/encrypt/dontremove/key0.txt
strings /dev/urandom |tr -dc A-Za-z0-9 | head -c5000; echo > /etc/encrypt/dontremove/key1.txt
strings /dev/urandom |tr -dc A-Za-z0-9 | head -c5000; echo > /etc/encrypt/dontremove/key2.txt
strings /dev/urandom |tr -dc A-Za-z0-9 | head -c5000; echo > /etc/encrypt/dontremove/key3.txt
strings /dev/urandom |tr -dc A-Za-z0-9 | head -c5000; echo > /etc/encrypt/dontremove/key4.txt
strings /dev/urandom |tr -dc A-Za-z0-9 | head -c5000; echo > /etc/encrypt/dontremove/key5.txt
strings /dev/urandom |tr -dc A-Za-z0-9 | head -c5000; echo > /etc/encrypt/dontremove/key6.txt
strings /dev/urandom |tr -dc A-Za-z0-9 | head -c5000; echo > /etc/encrypt/dontremove/key7.txt
strings /dev/urandom |tr -dc A-Za-z0-9 | head -c5000; echo > /etc/encrypt/dontremove/key8.txt
strings /dev/urandom |tr -dc A-Za-z0-9 | head -c5000; echo > /etc/encrypt/dontremove/key9.txt
fi
fi

clear
if [[ $t == "" ]]
then
ls -l
echo "File or Folder"
read t
fi

if [[ $c == 1 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key0.txt > /dev/null || echo "Wrong Key"
elif [[ $c == 2 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key1.txt > /dev/null || echo "Wrong Key"
elif [[ $c == 3 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key2.txt > /dev/null || echo "Wrong Key"
elif [[ $c == 4 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key3.txt > /dev/null || echo "Wrong Key"
elif [[ $c == 5 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key4.txt > /dev/null || echo "Wrong Key"
elif [[ $c == 6 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key5.txt > /dev/null || echo "Wrong Key"
elif [[ $c == 7 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key6.txt > /dev/null || echo "Wrong Key"
elif [[ $c == 8 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key7.txt > /dev/null || echo "Wrong Key"
elif [[ $c == 9 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key8.txt > /dev/null || echo "Wrong Key"
else
ccrypt -dr $t -k /etc/encrypt/dontremove/key9.txt > /dev/null || echo "Wrong Key"
fi

if [ ! -d $t ]
then
t=$(echo $t | rev | cut -c 5- | rev )
fi

if [[ $b == 1 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key0.txt > /dev/null || echo "Wrong Key"
elif [[ $b == 2 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key1.txt > /dev/null || echo "Wrong Key"
elif [[ $b == 3 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key2.txt > /dev/null || echo "Wrong Key"
elif [[ $b == 4 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key3.txt > /dev/null || echo "Wrong Key"
elif [[ $b == 5 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key4.txt > /dev/null || echo "Wrong Key"
elif [[ $b == 6 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key5.txt > /dev/null || echo "Wrong Key"
elif [[ $b == 7 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key6.txt > /dev/null || echo "Wrong Key"
elif [[ $b == 8 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key7.txt > /dev/null || echo "Wrong Key"
elif [[ $b == 9 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key8.txt > /dev/null || echo "Wrong Key"
else
ccrypt -dr $t -k /etc/encrypt/dontremove/key9.txt > /dev/null || echo "Wrong Key"
fi

if [ ! -d $t ]
then
t=$(echo $t | rev | cut -c 5- | rev )
fi

if [[ $a == 1 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key0.txt > /dev/null || echo "Wrong Key"
elif [[ $a == 2 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key1.txt > /dev/null || echo "Wrong Key"
elif [[ $a == 3 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key2.txt > /dev/null || echo "Wrong Key"
elif [[ $a == 4 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key3.txt > /dev/null || echo "Wrong Key"
elif [[ $a == 5 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key4.txt > /dev/null || echo "Wrong Key"
elif [[ $a == 6 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key5.txt > /dev/null || echo "Wrong Key"
elif [[ $a == 7 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key6.txt > /dev/null || echo "Wrong Key"
elif [[ $a == 8 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key7.txt > /dev/null || echo "Wrong Key"
elif [[ $a == 9 ]]
then
ccrypt -dr $t -k /etc/encrypt/dontremove/key8.txt > /dev/null || echo "Wrong Key"
else
ccrypt -dr $t -k /etc/encrypt/dontremove/key9.txt > /dev/null || echo "Wrong Key"
fi

ls -l $t
echo "Finished"
