# Sleeper

Sleeps for X seconds based on input to STDIN. 

```
echo '{"sleep": 5}' | docker run --rm -i fnproject/sleeper
```

## Notes

To get initial Gemfile.lock:

```
docker run --rm -v ${PWD}:/func -w /func fnproject/ruby:dev bundle install --path vendor/bundle
```
