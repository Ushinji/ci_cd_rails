#!/bin/bash

set -e

if [ "$RAILS_ENV" != "production" ] ; then
  echo "RAILS_ENV is not production"
  exit 1
fi

export RAILS_SERVE_STATIC_FILES=true
export RAILS_LOG_TO_STDOUT=true

exec "$@"
