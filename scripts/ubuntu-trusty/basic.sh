#!/bin/bash

# update apt
sudo apt-get update

# lang and locale
sudo apt-get install -y language-pack-ja-base language-pack-ja
sudo /usr/sbin/update-locale LANG=ja_JP.UTF-8 LANGUAGE="ja_JP:ja"
source /etc/default/locale
echo $LANG

# timezone
sudo cp -f /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
sudo sh -c 'echo "Asia/Tokyo" > /etc/timezone'
sudo dpkg-reconfigure -f noninteractive tzdata
