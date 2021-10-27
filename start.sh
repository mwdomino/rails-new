#!/bin/bash
cd local/app
export TERM=xterm # ctrl+l is very important to me
export HOME=$PWD
export PATH=$HOME/vendor/bundle/bin:$HOME/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Bundle options, can be configured either with bundle config set or ENV
export BUNDLE_BIN=$HOME/bin
export BUNDLE_DEPLOYMENT=true
export BUNDLE_PATH=$HOME/vendor/bundle

bundle install
bundle exec rails webpacker:install
bundle exec rails s