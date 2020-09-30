FROM ruby:2.5.7
RUN apt-get update
RUN apt-get install -y \ 
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn \
  vim

WORKDIR /tenantrental
COPY Gemfile Gemfile.lock /tenantrental/
RUN bundle install