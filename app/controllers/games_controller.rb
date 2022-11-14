require "json"
require"open-uri"
class GamesController < ApplicationController
  def new
    @letters = ("a".."z").to_a.sample(10)
  end

  def score
    url = "https://wagon-dictionary.herokuapp.com/#{params[:word]}"
    user_serialized = URI.open(url).read
    @user = JSON.parse(user_serialized)
  end

  def fiting_letters
   word.chars.all? { |letter| word.count(letter) <= letters.count(letter) }
  end
end
