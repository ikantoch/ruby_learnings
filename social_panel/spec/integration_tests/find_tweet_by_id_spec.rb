# frozen_string_literal: true

require './spec/spec_helper.rb'
require './lib/twitter_client.rb'
WebMock.allow_net_connect!

RSpec.describe 'finding tweet by id' do
  it 'finds twitter by id' do
    result = TwitterClient.new.get_tweet_by_id('1305411679468113920')
    expect(result).to include(
      "text" => "Devtesttweet852369"
    )
  end
end
