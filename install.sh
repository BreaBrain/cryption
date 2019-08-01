

#!/bin/bash
apt-get update
apt-get install ccrypt
clear

cp crypt/encrypt.sh /bin/encrypt
cp crypt/decrypt.sh /bin/decrypt
chmod +x /bin/encrypt
chmod +x /bin/decrypt


if [ ! -d /etc/encrypt/ ]
then
mkdir /etc/encrypt/
mkdir /etc/encrypt/dontremove/
mkdir /etc/encrypt/key
if [ ! -f /etc/encrypt/dontremove/key0.txt ]
then
openssl rand -base64 50000 | rev | cut -c 4- | rev > /etc/encrypt/key/key.txt
openssl rand -base64 5000 | rev | cut -c 4- | rev > /etc/encrypt/dontremove/key0.txt
openssl rand -base64 5000 | rev | cut -c 4- | rev > /etc/encrypt/dontremove/key1.txt
openssl rand -base64 5000 | rev | cut -c 4- | rev > /etc/encrypt/dontremove/key2.txt
openssl rand -base64 5000 | rev | cut -c 4- | rev > /etc/encrypt/dontremove/key3.txt
openssl rand -base64 5000 | rev | cut -c 4- | rev > /etc/encrypt/dontremove/key4.txt
openssl rand -base64 5000 | rev | cut -c 4- | rev > /etc/encrypt/dontremove/key5.txt
openssl rand -base64 5000 | rev | cut -c 4- | rev > /etc/encrypt/dontremove/key6.txt
openssl rand -base64 5000 | rev | cut -c 4- | rev > /etc/encrypt/dontremove/key7.txt
openssl rand -base64 5000 | rev | cut -c 4- | rev > /etc/encrypt/dontremove/key8.txt
openssl rand -base64 5000 | rev | cut -c 4- | rev > /etc/encrypt/dontremove/key9.txt
fi
fi
clear
echo "Finished"
echo "Do 'encrypt (file)' for Encryption"
echo "Do 'decrypt (file)' for Decryption"
