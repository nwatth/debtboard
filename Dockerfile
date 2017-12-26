FROM ruby:2.4
#FROM ruby:2.4-alpine

ENV APP_ROOT /app
ENV BUNDLE_PATH /usr/local/bundle

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

#RUN apk update && \
#    apk add build-base nodejs postgresql-dev

WORKDIR $APP_ROOT
ADD . $APP_ROOT
