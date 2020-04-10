require 'faraday'

# response = Faraday.get 'https://api.twitter.com/1.1/statuses/show.json?id=1247104664144936960', {'Authorization' => "Bearer #{ENV['SOCIAL_PANEL_TWITTER_ACCESS_TOKEN']}"}
# p response

require 'faraday'
require 'JSON'

class TwitterClient
  URL = 'https://api.twitter.com/1.1'

  def get_tweet_by_id(tweet_id)
    response = Faraday.get("#{URL}/statuses/show.json?id=#{tweet_id}") do |req|
      req.headers['Authorization'] = "Bearer #{ENV['SOCIAL_PANEL_TWITTER_ACCESS_TOKEN']}"
    end
    p response
  end
end

p TwitterClient.new.get_tweet_by_id('1247104664144936960')