# frozen_string_literal: true

require_relative '../lib/twitter_client.rb'

RSpec.describe 'twitter_client_spec' do
  it 'finds twitter by id' do
    result = TwitterClient.new.get_tweet_by_id('1247104664144936960')
    # expected_result = {"created_at"=>"Mon Apr 06 10:11:36 +0000 2020", "id"=>1247104664144936960, "id_str"=>"1247104664144936960", "text"=>"My first twitter*", "truncated"=>false, "entities"=>{"hashtags"=>[], "symbols"=>[], "user_mentions"=>[], "urls"=>[]}, "source"=>"<a href=\"https://mobile.twitter.com\" rel=\"nofollow\">Twitter Web App</a>", "in_reply_to_status_id"=>nil, "in_reply_to_status_id_str"=>nil, "in_reply_to_user_id"=>nil, "in_reply_to_user_id_str"=>nil, "in_reply_to_screen_name"=>nil, "user"=>{"id"=>1244585985419157505, "id_str"=>"1244585985419157505", "name"=>"ikdevaccount", "screen_name"=>"ikdevaccount", "location"=>"", "description"=>"", "url"=>nil, "entities"=>{"description"=>{"urls"=>[]}}, "protected"=>false, "followers_count"=>0, "friends_count"=>0, "listed_count"=>0, "created_at"=>"Mon Mar 30 11:23:32 +0000 2020", "favourites_count"=>0, "utc_offset"=>nil, "time_zone"=>nil, "geo_enabled"=>false, "verified"=>false, "statuses_count"=>1, "lang"=>nil, "contributors_enabled"=>false, "is_translator"=>false, "is_translation_enabled"=>false, "profile_background_color"=>"F5F8FA", "profile_background_image_url"=>nil, "profile_background_image_url_https"=>nil, "profile_background_tile"=>false, "profile_image_url"=>"http://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png", "profile_image_url_https"=>"https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png", "profile_link_color"=>"1DA1F2", "profile_sidebar_border_color"=>"C0DEED", "profile_sidebar_fill_color"=>"DDEEF6", "profile_text_color"=>"333333", "profile_use_background_image"=>true, "has_extended_profile"=>false, "default_profile"=>true, "default_profile_image"=>true, "following"=>nil, "follow_request_sent"=>nil, "notifications"=>nil, "translator_type"=>"none"}, "geo"=>nil, "coordinates"=>nil, "place"=>nil, "contributors"=>nil, "is_quote_status"=>false, "retweet_count"=>0, "favorite_count"=>0, "favorited"=>false, "retweeted"=>false, "lang"=>"en"}
    # I use variable expected_result in case I would like to expect rssponse to be full hash from the twitter with all it's keys and values
    #
    # expect(result["text"]).to eq("My first twitter*")
    # expect(result["created_at"]).to eq("Mon Apr 06 10:11:36 +0000 2020")
    # In this approach I'm testing if the the entire response contains "My first twitter*" value under key ["text"], and "Mon Apr 06 10:11:36 +0000 2020" in the key "created_at"
    # I'm doing this by using separate expects and it's nice to use when I expect a few (like only two) values of keys

    expect(result).to include(
      "created_at" => "Mon Apr 06 10:11:36 +0000 2020",
      "text" => "My first twitter*"
    )
  #  Here I'm checking if the response of result variable includes "created_at" => "Mon Apr 06 10:11:36 +0000 2020" and "text" => "My first twitter*" in one expect.
  #  It is easier to use when I'm expecting to see specific values of multiple keys (like 3 or more).
  end
end
