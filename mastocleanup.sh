#!/bin/bash

# print commands as they're executed, exit on error
set -ex

#export PATH="/home/mastodon/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
export RAILS_ENV=production
export DB_NAME=cleanup

pushd $(dirname "$0")

#bundle exec bin/tootctl statuses remove --days=240
bundle exec bin/tootctl media remove --days 30 --concurrency 100
bundle exec bin/tootctl media remove-orphans
bundle exec bin/tootctl media remove --prune-profiles -c 25
#bundle exec bin/tootctl preview_cards remove --days=180
bundle exec bin/tootctl cache clear

echo `date +"%Y-%m-%d %T"` orphaned statuses and cached media removed
