FROM ruby:2.7.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs npm
RUN npm install --global yarn && yarn add bootstrap jquery popper.js

RUN mkdir /web-medical-clinic
WORKDIR /web-medical-clinic

COPY Gemfile /web-medical-clinic/Gemfile
COPY Gemfile.lock /web-medical-clinic/Gemfile.lock

RUN bundle install && bundle update --bundler

COPY . /web-medical-clinic
