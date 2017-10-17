require 'sinatra'
require 'sinatra/reloader'

RANDOM_NUMBER = rand(100)

get '/' do
  erb :index, :locals => {:number => RANDOM_NUMBER}
end
