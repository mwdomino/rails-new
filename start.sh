#!/bin/bash
cd local/app
echo "Running the thing: $PWD"
ls -ahl
echo "Trying bundle"
/usr/bin/gem install bundler
echo "Tried bundle"
echo "Trying install"
bundle install --path vendor/bundle
echo "Tried install"
echo "Trying rails s"
rails s
