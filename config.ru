require 'sinatra'

get '/' do
  "Hello World, from Circle CI!"
end

run Sinatra::Application