# frozen_string_literal: true

require './spec/spec_helper.rb'
require './lib/twitter_client.rb'
WebMock.allow_net_connect!

RSpec.describe 'finding tweet phrase' do
  it 'finds tweets by phrase' do
    result = TwitterClient.new.search_tweets_by_phrase(query_phrase: 'Mozambik', count: 1, lang: "en", locale: "us")
    expected_text = result["statuses"].first["text"]
    expect(expected_text).to include('Mozambik')
  end
end
