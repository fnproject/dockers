[![](http://badge-imagelayers.iron.io/fnproject/ruby:latest.svg)](http://imagelayers.iron.io/?images=fnproject/ruby:latest 'Get your own badge on imagelayers.iron.io')

Image on Docker Hub: https://hub.docker.com/r/fnproject/ruby

## Using this image for your Ruby apps/programs

### 1. Vendor dependencies (if you update your Gemfile, rerun this):

```sh
docker run --rm -v "$PWD":/worker -w /worker fnproject/ruby:dev bundle install --standalone --clean
```

If you're using Nokogiri, use this one:

```sh
docker run --rm -v "$PWD":/worker -w /worker fnproject/ruby:dev sh -c 'bundle config --local build.nokogiri --use-system-libraries && bundle install --standalone --clean'
```

Then require the vendored gems. Notice in `hello.rb`, we add the following so it uses the vendored gems:

```ruby
require_relative 'bundle/bundler/setup'
```

### 2. Test your code

Test your code:

```sh
docker run --rm -it -v $PWD:/app -w /app fnproject/ruby ruby hello.rb
```

Notice we're using fnproject/ruby:dev to build and fnproject/ruby to run. fnproject/ruby is much smaller.

## Building an image for your Ruby app:

Make a Dockerfile:

```
FROM fnproject/ruby

WORKDIR /app
ADD . /app

ENTRYPOINT ["ruby", "hello.rb"]
```

Build the image:

```sh
docker build -t username/imagename:latest .
```

Push it to Docker Hub:

```sh
docker push username/imagename
```
