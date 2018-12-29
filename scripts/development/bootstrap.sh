#!/bin/sh

echo "### Development environment Bootstrap ###"
echo ""

docker-compose build
docker-compose run --rm app bundle install
docker-compose run --rm app bundle exec rails db:create
docker-compose run --rm app bundle exec rails db:migrate

docker-compose up -d
