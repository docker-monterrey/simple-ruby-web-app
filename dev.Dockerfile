# 1: Use ruby 2.3.1 as base:
FROM ruby:2.3.2

# 2: We'll set the application path as the working directory
WORKDIR /usr/src/app

# 3: We'll add the app's binaries path to $PATH:
ENV HOME=/usr/src/app \
    PATH=/usr/src/app/bin:$PATH

# 4: Install the current project gems - they can be safely changed later during
# development by running `bundle install` or `bundle update`:
ADD Gemfile* /usr/src/app/
RUN set -ex && bundle install
