# frozen_string_literal: true

require 'faraday'
require 'JSON'
require 'pry'

class TwitterClient
  URL = 'https://api.twitter.com/1.1'
  ACCESS_TOKEN = "Bearer #{ENV['SOCIAL_PANEL_TWITTER_ACCESS_TOKEN']}"

  # def initialize(access_token: ENV['SOCIAL_PANEL_TWITTER_ACCESS_TOKEN'])
  #   @access_token = "Bearer #{access_token}"
  # end

  def get_tweet_by_id(tweet_id)
    response = Faraday.get("#{URL}/statuses/show.json?id=#{tweet_id}") do |request|
      request.headers['Authorization'] = ACCESS_TOKEN
    end

    body = response.body
    JSON.parse(body)
  end

  def search_tweets_by_phrase(query_phrase:, result_type: "recent", count: 1, lang: "en", locale: "us")
    response =  Faraday.get("#{URL}/search/tweets.json?q=#{query_phrase}&#{result_type}&#{count}&#{lang}&#{locale}") do |request|
      request.headers['Authorization'] = ACCESS_TOKEN
    end

    body = response.body
    JSON.parse(body)
  end
end
