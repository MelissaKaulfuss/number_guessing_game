require 'sinatra'
require 'sinatra/reloader'

RANDOM_NUMBER = rand(101)

get '/' do
  "The secret number is #{RANDOM_NUMBER}"
end

