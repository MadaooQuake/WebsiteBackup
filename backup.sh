#!/bin/bash

# prepare date
now=Website-$(date +'%m-%d-%Y')

# copy website - all website with images and themes
cd ~/backups
mkdir ~/backups/$now
cp -rv ~/domains/Website.com/* ~/backups/$now
# copy wp database
mysqldump -u user -ppassword WebsiteDB > ~/backups/$now/$now.sql

# zip file
cd ~/backups
tar -zcvf ~/backups/$now.tar.gz ~/backups/$now
rm -rv $now
