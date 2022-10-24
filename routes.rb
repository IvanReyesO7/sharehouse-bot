require 'sinatra'

post '/webhook/' do
  puts request.body.read
end