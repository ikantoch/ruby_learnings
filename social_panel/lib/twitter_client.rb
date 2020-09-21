# frozen_string_literal: true

require 'faraday'
require 'JSON'
require 'pry'

class TwitterClient

  # URL = 'https://api.twitter.com/1.1'
  # TOKEN = "Bearer #{ENV.fetch('SOCIAL_PANEL_TWITTER_ACCESS_TOKEN')}"

  def connection
      Faraday.new(
        url: 'https://api.twitter.com/1.1',
        headers: { 'Authorization' => "Bearer #{ENV['SOCIAL_PANEL_TWITTER_ACCESS_TOKEN']}" },
      )
  end

  def get_tweet_by_id(tweet_id)
    response = connection.get("statuses/show.json?id=#{tweet_id}")

    body = response.body
    JSON.parse(body)
  end

  def search_tweets_by_phrase(query_phrase, result_type: "recent")
    response =  connection.get("search/tweets.json?q=#{query_phrase}&#{result_type}")

    body = response.body
    JSON.parse(body)
  end
end

result = TwitterClient.new.get_tweet_by_id('1305411679468113920')
p result
