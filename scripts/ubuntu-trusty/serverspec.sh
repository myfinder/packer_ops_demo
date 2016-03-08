#!/bin/bash
echo "[Packer] ${ROLE} serverspec check start"

cd /tmp/files/serverspec
sudo gem install bundler
bundle install --path=vendor
bundle exec rake spec

echo "[Packer] ${ROLE} serverspec check done"
