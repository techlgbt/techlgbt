#!/bin/bash

# print commands as they're executed, exit on error
set -ex

#export PATH="/home/mastodon/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
export RAILS_ENV=production

#/home/mastodon/live/bin/tootctl statuses remove --days=3
/home/mastodon/live/bin/tootctl media remove --days 30 --concurrency 100
/home/mastodon/live/bin/tootctl media remove-orphans
/home/mastodon/live/bin/tootctl media remove --prune-profiles -c 25
#/home/mastodon/live/bin/tootctl preview_cards remove --days=180
/home/mastodon/live/bin/tootctl cache clear

echo `date +"%Y-%m-%d %T"` orphaned statuses and cached media removed
