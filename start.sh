#!/bin/bash
cd local/app
echo "Running the thing: $PWD"
ls -ahl
echo "Trying bundle"
/usr/bin/gem install bundler
echo "Tried bundle"
bundle install --path vendor/bundle
rails s
