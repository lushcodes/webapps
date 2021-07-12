require 'sinatra'
require "sinatra/reloader" if development?

get '/' do
  'hello!'
end

get '/secret' do
  'This is the secret path to heaven'
end

get '/random-cat' do
  @name = ["Lucy", "Suzanne", "Gary", "Betty"].sample
erb(:index)
end

post '/named-cat' do
  puts params
  @name = params[:name]
erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

