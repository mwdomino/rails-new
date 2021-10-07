#!/bin/bash
cd local/app
echo "Running the thing: $PWD"
ls -ahl
/usr/bin/gem install bundle
bundle install --path vendor/bundle
rails s
