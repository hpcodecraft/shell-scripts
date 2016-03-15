#!/bin/sh

echo "cleaning resource forks in $1"

find $1 -name "Thumbs.db" -print0 | xargs -0 rm -rf # remove Windows thumbnail cache
find $1 -name ".DS_Store" -print0 | xargs -0 rm -rf # remove Mac OS folder settings
find $1 -name "._*" -print0 | xargs -0 rm -rf       # remove Mac OS resource forks

echo "finished."
