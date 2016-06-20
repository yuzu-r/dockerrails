FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /dockerrails
WORKDIR /dockerrails
ADD Gemfile /dockerrails/Gemfile
ADD Gemfile.lock /dockerrails/Gemfile.lock
RUN bundle install
ADD . /dockerrails

