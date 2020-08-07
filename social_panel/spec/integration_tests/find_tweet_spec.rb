# frozen_string_literal: true

require './spec/spec_helper.rb'
require './lib/twitter_client.rb'
WebMock.allow_net_connect!

RSpec.describe 'finding tweet by id' do
  it 'finds twitter by id' do
    result = TwitterClient.new.get_tweet_by_id('1247104664144936960')
    expect(result).to include(
      "created_at" => "Mon Apr 06 10:11:36 +0000 2020",
      "text" => "My first twitter*"
    )
  end
end
