FROM ruby:2.7.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /web-medical-clinic
WORKDIR /web-medical-clinic

COPY Gemfile /web-medical-clinic/Gemfile
COPY Gemfile.lock /web-medical-clinic/Gemfile.lock

RUN bundle install
RUN bundle update --bundler

COPY . /web-medical-clinic

CMD ["rails", "server", "-b", "0.0.0.0"]