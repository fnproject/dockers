FROM fnproject/ruby:dev AS bundle
WORKDIR /func
ADD Gemfile* /func/
RUN bundle install --deployment
ADD . /func/

FROM fnproject/ruby
WORKDIR /func
COPY --from=bundle /func/ /func/
ENTRYPOINT ["bundle", "exec", "ruby", "sleeper.rb"]
