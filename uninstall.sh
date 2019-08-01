#!/bin/bash
clear
echo "Warning!"
echo "Are you sure?"
echo "if you delete everything you cant decrypt any of your files"
echo "(yes/N)"
read q
if [[ $q == "yes" ]]
then

rm -r /etc/encrypt
rm /bin/encrypt
rm /bin/decrypt

echo "Uninstalled!"

else
echo "Ok"
fi
