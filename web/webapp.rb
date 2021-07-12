require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello!'
end

get '/secret' do
  'This is the secret path to heaven'
end

get '/cat' do
erb(:index)
end