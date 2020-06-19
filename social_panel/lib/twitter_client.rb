# frozen_string_literal: true

# require 'faraday'
#
# response = Faraday.get 'https://api.twitter.com/1.1/statuses/show.json', {id: 1247104664144936960}, {'Authorization' => "Bearer #{ENV['SOCIAL_PANEL_TWITTER_ACCESS_TOKEN']}"}
# p response

require 'faraday'
require 'JSON'
require 'pry'

class TwitterClient
  URL = 'https://api.twitter.com/1.1'

  def get_tweet_by_id(tweet_id)
    response = Faraday.get("#{URL}/statuses/show.json?id=#{tweet_id}") do |request|
      request.headers['Authorization'] = "Bearer #{ENV['SOCIAL_PANEL_TWITTER_ACCESS_TOKEN']}"
    end

    body = response.body
    JSON.parse(body)
    # parsed_body = JSON.parse(body)
    # parsed_body.select {|key, value| key == "text"}
    # in this approach I select from the response hash the key and value where key is "text", it returns a new hash { "text" => "My first twitter*"}
    #
    # parsed_body["text"]
    # in this approach I'm pulling only the value of key "text" in the response hash, it returns "My first twitter"
  end

  # https://api.twitter.com/1.1/search/tweets.json?q=%22coronavirus%22%3A%29result_type=recent&count=3&lang=en
  #
  def search_tweets_by_phrase(query_phrase: "coronavirus", result_type: "recent", count: 3, lang: "en")
    response =  Faraday.get("#{URL}/search/tweets.json?q=%22#{query_phrase}%22%3A%29#{result_type}&#{count}&#{lang}") do |request|
      request.headers['Authorization'] = "Bearer #{ENV['SOCIAL_PANEL_TWITTER_ACCESS_TOKEN']}"
    end

    body = response.body
    JSON.parse(body)
  end
end

tweet = TwitterClient.new.search_tweets_by_phrase
p tweet
#
# tweet = TwitterClient.new.get_tweet_by_id(1247104664144936960)
# p tweet

# TwitterClient.new.get_tweet_by_id('1247104664144936960')

 # This is my way to get my first tweet by using curl
 # curl --header "Authorization: Bearer $SOCIAL_PANEL_TWITTER_ACCESS_TOKEN" --request GET https://api.twitter.com/1.1/statuses/show.json?id=1247104664144936960