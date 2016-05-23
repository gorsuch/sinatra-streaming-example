# Sinatra Streaming Example

A simple demonstration of streaming Redis pub/sub data over HTTP via Sinatra's new streaming capabilities.

## See it live

```bash
curl -v https://sinatra-streaming-example.herokuapp.com/stream
```

## Run it local

```bash
$ bundle install
$ bundle exec foreman start
$ curl -v http://localhost:5000
```

## Deploy to Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

# Spin up your dynos

```bash
$ heroku scale web=1 worker=1
```
