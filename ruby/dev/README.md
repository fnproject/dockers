[![](http://badge-imagelayers.iron.io/fnproject/ruby:dev.svg)](http://imagelayers.iron.io/?images=fnproject/ruby:dev 'Get your own badge on imagelayers.iron.io')

This image is for building your dependencies. You should use
fnproject/ruby to run them (way smaller image).

## Using

Vendor your dependencies:

```sh
docker run --rm -v $PWD:/app -w /app fnproject/ruby:dev bundle install --standalone --clean
docker run --rm -v $PWD:/app -w /app fnproject/ruby:dev bundle install --standalone --clean
sudo chmod -R a+rw .bundle
sudo chmod -R a+rw bundle
```

Add the following to your code so it uses the vendored gems:

```ruby
require_relative 'bundle/bundler/setup'
```

See fnproject/ruby image for running your code.
