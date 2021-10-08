#!/bin/bash
cd local/app
echo "Running the thing: $PWD"
echo "installing bundler"
/usr/bin/gem install --user-install bundler 2>&1
echo "running bundle install"
/nonexistent/.gem/ruby/2.5.0/bin/bundle install --path vendor/bundle 2>&1
echo "starting rails server"
/nonexistent/.gem/ruby/2.5.0/bin/rails s 2>&1
