class CoinsController < ApplicationController


  def list
    require 'net/http'
    require 'json'
    @url = 'https://api.coinmarketcap.com/v1/ticker/?limit=1000'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    end


end

