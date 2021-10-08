#!/bin/bash
cd local/app
echo "Running the thing: $PWD"
ls -ahl
echo "Trying bundle"
/usr/bin/gem install --user-install bundler 2>&1
echo "Tried bundle"
echo "Trying install"
bundle install --path vendor/bundle 2>&1
echo "Tried install"
echo "Trying rails s"
rails s 2>&1
