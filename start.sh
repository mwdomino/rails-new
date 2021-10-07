#!/bin/bash
cd local/app
echo "Running the thing: $PWD"
ls -ahl
bundle install --path vendor/bundle
rails s
