# frozen_string_literal: true

require './spec/spec_helper'
require './lib/twitter_client.rb'

WebMock.disable_net_connect!(allow_localhost: true)

RSpec.describe 'twitter_client_spec' do

  it 'finds tweet by id' do

    stubbed_body =  "{\"created_at\":\"Mon Apr 06 10:11:36 +0000 2020\",\"id\":1247104664144936960,\"id_str\":\"1247104664144936960\",\"text\":\"My first twitter*\"}"

    stub_request(:get, "https://api.twitter.com/1.1/statuses/show.json?id=1247104664144936960").
      with(
        headers: {
          'Authorization'=>"Bearer #{ENV['SOCIAL_PANEL_TWITTER_ACCESS_TOKEN']}"
        }).
      to_return(status: 200, body: stubbed_body, headers: {})

    result = TwitterClient.new.get_tweet_by_id('1247104664144936960')
    expect(result).to include(
                        "created_at" => "Mon Apr 06 10:11:36 +0000 2020",
                        "text" => "My first twitter*"
                      )
  end
end
