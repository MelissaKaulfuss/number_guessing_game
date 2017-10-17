require 'sinatra'
require 'sinatra/reloader'
require "pry"

RANDOM_NUMBER = rand(100)
FREAK_OUT_BUFFER = 5

get '/' do
  @result = ""
  guess = params["guess"]
  message = check_guess(guess)

  erb :index, :locals => {:message => message}
end

def check_guess(guess)
  guessed_number = params["guess"].to_i
  value_difference = guessed_number - RANDOM_NUMBER
  case
  when value_difference < -FREAK_OUT_BUFFER
    "Woah! Waaay too low!"
  when value_difference > FREAK_OUT_BUFFER
    "Woah! Waaay too high!"
  when guessed_number > RANDOM_NUMBER
    "Too High!"
  when guessed_number < RANDOM_NUMBER
    "Too Low!"
  when guessed_number == RANDOM_NUMBER
    "You got it! The SECRET NUMBER is #{RANDOM_NUMBER}"
  end
end
