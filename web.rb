require 'redis'
require 'sinatra'

configure do
  redis_url = ENV["REDIS_URL"] || "redis://localhost:6379"
  uri = URI.parse(redis_url)
  set :redis, Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)
end

get '/' do
  "<pre>curl -v https://sinatra-streaming-example.herokuapp.com/stream</pre>"
end

get '/stream' do
  puts "connection made"

  stream do |out|
    settings.redis.subscribe 'time' do |on|
      on.message do |channel, message|
        out << "#{message}\n"
      end
    end
  end
end
