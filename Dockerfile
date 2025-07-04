FROM ruby:2.7
LABEL maintainer="Asif Mohammad Mollah <admin@mrasif.in>"

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler -v 2.1.4
RUN bundle install
ADD . /app/
RUN bundle exec jekyll b -d build
