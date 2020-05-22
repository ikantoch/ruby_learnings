# frozen_string_literal: true

require_relative '../lib/twitter_client.rb'
require '../spec/spec_helper'

RSpec.describe 'twitter_client_spec' do
  it 'finds tweet by id' do

    stub_request(:get, "https://api.twitter.com/1.1/statuses/show.json?id=1247104664144936960").
      with(
        headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'Host'=>'api.twitter.com',
          'User-Agent'=>'Ruby'
        }).
      to_return(status: 200, body: "", headers: {})
  end
end
