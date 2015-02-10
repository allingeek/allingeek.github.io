FROM ruby:2.1
MAINTAINER jeff@allingeek.com

RUN apt-get update \
  && apt-get install -y \
    node \
    python-pygments \
  && apt-get clean 

RUN gem install bundler

VOLUME /src
EXPOSE 4000

WORKDIR /src
