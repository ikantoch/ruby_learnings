# frozen_string_literal: true

require './spec/spec_helper.rb'
require './lib/twitter_client.rb'
WebMock.allow_net_connect!

RSpec.describe 'finding tweets by phrase' do
  it 'finds tweets by phrase' do
    result = TwitterClient.new.search_tweets_by_phrase(query_phrase: 'Devtesttweet852369')
    expected_text = result['statuses'].first['text']
    expect(expected_text).to include('Devtesttweet852369')
  end
end
