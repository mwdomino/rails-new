#!/bin/bash
cd alloc/data 
export TERM=xterm # ctrl+l is very important to me
export HOME=$PWD
export PATH=$HOME/.gem/ruby/2.5.0/bin:$HOME/vendor/bundle/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Bundle options, can be configured either with bundle config set or ENV
export BUNDLE_BIN=$HOME/bin
export BUNDLE_DEPLOYMENT=true
export BUNDLE_PATH=$HOME/vendor/bundle

sleep 9000

gem install --user-install bundler 2>&1

bundle install --without development test 2>&1

bundle exec rails webpacker:install 2>&1

bundle exec rails s 2>&1
