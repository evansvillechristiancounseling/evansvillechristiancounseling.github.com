FROM ruby:2.7.1-buster

WORKDIR /app

RUN bundle init && bundle add github-pages

EXPOSE 4567
CMD jekyll serve -P 4567 -H 0.0.0.0 --incremental

ENV LANG C.UTF-8
ENV LANGUAGE en_US:en  
ENV LC_ALL C.UTF-8
