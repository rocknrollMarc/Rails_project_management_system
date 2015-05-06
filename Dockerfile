FROM ruby:2.2.1
MAINTAINER "rocknrollmarc"

RUN apt-get update -qq && apt-get install -y build essential lib-sqlite3-dev
RUN mkdir /myapp
WORKDIR ~/workspace/rails/gatherer
ADD Gemfile ~/workspace/rails/gatherer/Gemfile
RUN bundle install
ADD . /myapp
