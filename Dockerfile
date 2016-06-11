FROM ruby:2.3.0

MAINTAINER duykhoa12t@gmail.com

ENV WORK_PATH=/euler
ENV BUNDLE_PATH=/bundle

ADD Gemfile* $WORK_PATH/
WORKDIR $WORK_PATH

RUN bundle install -j20

VOLUME [$WORK_PATH, $BUNDLE_PATH]
