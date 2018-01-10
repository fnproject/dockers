FROM ruby:alpine

ADD . /code
RUN gem install openapi3_parser

ENTRYPOINT ["ruby", "/code/validate.rb"]
