#start with same ruby that rubymine was successfully debuging pre-docker.
FROM ruby:2.4.1
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /hello-app
WORKDIR /hello-app
COPY Gemfile /hello-app/Gemfile
COPY Gemfile.lock /hello-app/Gemfile.lock
RUN bundle install
COPY . /hello-app
