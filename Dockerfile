FROM ruby:2.5.3 as base
ENV LANG C.UTF-8
ENV APP_ROOT=/app

RUN apt-get update -qq \
    &&  apt-get install -y --no-install-recommends \
        build-essential \
        nodejs \
        libpq-dev \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT

FROM base 

COPY Gemfile $APP_ROOT
COPY Gemfile.lock $APP_ROOT
RUN bundle install --jobs=4 --deployment
COPY . $APP_ROOT
RUN RAILS_ENV=production bundle exec rake assets:precompile assets:clean

ENTRYPOINT ["./scripts/production/entrypoint.sh"]
