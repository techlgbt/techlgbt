#!/bin/bash
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export RAILS_ENV=production

/home/mastodon/live/bin/tootctl cache recount statuses

echo `date +"%Y-%m-%d %T"` cleaned status count
