#!/bin/bash
echo "Running the thing: $PWD"
ls -ahl
bundle install --path vendor/bundle
rails s
