#!/bin/bash
# This file is meant to be executed via systemd.
source /usr/local/rvm/scripts/rvm
source /etc/profile.d/rvm.sh
export ruby_ver=$(rvm list default string)

export CONFIGURED=yes
export TIMEOUT=50
export APP_ROOT=/home/rails/rails_project
export RAILS_ENV="production"
export GEM_HOME="/home/rails/rails_project/vendor/bundle"
export GEM_PATH="/home/rails/rails_project/vendor/bundle:/usr/local/rvm/gems/${ruby_ver}:/usr/local/rvm/gems/${ruby_ver}@global"
export PATH="/home/rails/rails_project/vendor/bundle/bin:/usr/local/rvm/gems/${ruby_ver}/bin:${PATH}"

# Passwords
export SECRET_KEY_BASE=e4b982aee39b8d000dd721d3da4bfbb1b8b390b62ba87fbdbedbac784dca3cf84faf0318669d64971fac3277acea3790eea7895469a8b2c3205ee16c27f568ac
export APP_DATABASE_PASSWORD=b85ca25da546f31e1122f7372f0195ee

# Execute the unicorn process
/home/rails/rails_project/vendor/bundle/bin/unicorn \
        -c /etc/unicorn.conf -E production --debug
