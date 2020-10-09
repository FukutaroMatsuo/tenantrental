FROM ruby:2.5.7
ENV APP_ROOT /tenantrental
RUN apt-get update
RUN apt-get install -y \ 
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client \
  yarn \
  vim

WORKDIR ${APP_ROOT}
COPY Gemfile Gemfile.lock ${APP_ROOT}/
RUN bundle install

# COPY . ${APP_ROOT}
# EXPOSE 3000
# CMD ["rails", "s", "-b", "0.0.0.0"]