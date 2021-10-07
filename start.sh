#!/bin/bash
cd local/app/app
echo "Running the thing: $PWD"
ls -ahl
bundle install --path vendor/bundle
rails s
