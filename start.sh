#!/bin/bash
cd local/app
export HOME=$PWD

/usr/bin/gem install --user-install bundler 2>&1

echo "--------------"
export PATH=$PATH:$HOME/.gem/ruby/2.5.0/bin/
echo "PATH: $PATH"
echo "--------------"

echo "bundle -v"
#echo "Avail gems:"
#ls -ahl $HOME/.gem/ruby/2.5.0/bin
#echo "running bundle install"
#/nonexistent/.gem/ruby/2.5.0/bin/bundle install --path vendor/bundle 2>&1
#echo "starting rails server"
#/nonexistent/.gem/ruby/2.5.0/bin/rails s 2>&1
