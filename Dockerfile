FROM ruby:2.2.1
MAINTAINER "rocknrollmarc"

RUN apt-get update -qq && apt-get install -y build essential libpg-dev
# Customize to your needs...
RUN mkdir /myapp
WORKDIR ~/workspace/rails/gatherer
ADD Gemfile ~/workspace/rails/gatherer/Gemfile
RUN bundle install
ADD . /myapp
