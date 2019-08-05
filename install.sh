#!/bin/bash
apt-get update
apt-get install ccrypt
apt-get install zip

clear

cp crypt/encrypt.sh /bin/encrypt
cp crypt/decrypt.sh /bin/decrypt
chmod +x /bin/encrypt
chmod +x /bin/decrypt


if [ ! -d /etc/encrypt/ ]
then
mkdir /etc/encrypt/
mkdir /etc/encrypt/keys/
mkdir /etc/encrypt/key
if [ ! -f /etc/encrypt/keys/key0.txt ]
then
openssl rand -base64 50000 | rev | cut -c 4- | rev > /etc/encrypt/key/key.txt
openssl rand -base64 10000 | rev | cut -c 4- | rev > /etc/encrypt/keys/key0.txt
openssl rand -base64 10000 | rev | cut -c 4- | rev > /etc/encrypt/keys/key1.txt
openssl rand -base64 10000 | rev | cut -c 4- | rev > /etc/encrypt/keys/key2.txt
openssl rand -base64 10000 | rev | cut -c 4- | rev > /etc/encrypt/keys/key3.txt
openssl rand -base64 10000 | rev | cut -c 4- | rev > /etc/encrypt/keys/key4.txt
openssl rand -base64 10000 | rev | cut -c 4- | rev > /etc/encrypt/keys/key5.txt
openssl rand -base64 10000 | rev | cut -c 4- | rev > /etc/encrypt/keys/key6.txt
openssl rand -base64 10000 | rev | cut -c 4- | rev > /etc/encrypt/keys/key7.txt
openssl rand -base64 10000 | rev | cut -c 4- | rev > /etc/encrypt/keys/key8.txt
openssl rand -base64 10000 | rev | cut -c 4- | rev > /etc/encrypt/keys/key9.txt
fi
fi
ccrypt -er /etc/encrypt/keys -k /etc/encrypt/key/key.txt > /dev/null
zip --password cryption -R encrypt.zip /etc/encrypt > /dev/null
mv encrypt.zip /opt/.
clear
echo "Finished"
echo "Do 'encrypt (file)' for Encryption"
echo "Do 'decrypt (file)' for Decryption"
