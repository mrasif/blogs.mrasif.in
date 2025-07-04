FROM ruby:2.7
LABEL maintainer="Asif Mohammad Mollah <admin@mrasif.in>"

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler -v 2.1.4
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x entrypoint.sh
ENTRYPOINT ["bash","entrypoint.sh"]
