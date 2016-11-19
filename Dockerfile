FROM ruby:2.3.2-alpine

COPY . /app
WORKDIR /app
RUN bundle install
EXPOSE 9292
USER nobody
CMD rackup -o 0.0.0.0 hello-world.ru
