require 'faraday'

response = Faraday.get ('https://api.twitter.com/1.1/statuses/show.json?id=1247104664144936960', {Authorization: 'Bearer AAAAAAAAAAAAAAAAAAAAAC5bDQEAAAAALBo%2BLav0m39sGmsxuxEpzQ2Ipjs%3DmDClyoL8aBQ7NThNNnWojDONlfQrLaMzAE02RFMlz6nk2jOpLn'})

p response

# curl --header 'Authorization: Bearer AAAAAAAAAAAAAAAAAAAAAC5bDQEAAAAALBo%2BLav0m39sGmsxuxEpzQ2Ipjs%3DmDClyoL8aBQ7NThNNnWojDONlfQrLaMzAE02RFMlz6nk2jOpLn' --request GET https://api.twitter.com/1.1/statuses/show.json?id=1247104664144936960

Faraday.get 'https://api.twitter.com/1.1/statuses/show.json?id=1247104664144936960.json'


