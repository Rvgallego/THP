#!/usr/bin/env ruby
require 'twitter'

client = Twitter::Streaming::Client.new do |config|
  config.consumer_key        = "QNCRmgo3IuhtvUWOOZ0IHQnIp"
  config.consumer_secret     = "JQbeTJtsilAzxo5WnjHlvlHGuNZCL3snw112QhbSLrbFRu0iWe"
  config.access_token        = "793579414781038592-fJTOKTcp2Y5wnYCKcALkxRzOAKJ789C"
  config.access_token_secret = "IsjRV2o3E2hrHYyYTlwJ0999h828U7NC4tsLJegQn7e9L"

end

#client = Twitter::REST::Client.new do |config|
#  config.consumer_key        = "QNCRmgo3IuhtvUWOOZ0IHQnIp"
#  config.consumer_secret     = "JQbeTJtsilAzxo5WnjHlvlHGuNZCL3snw112QhbSLrbFRu0iWe"
#  config.access_token        = "793579414781038592-fJTOKTcp2Y5wnYCKcALkxRzOAKJ789C"
#  config.access_token_secret = "IsjRV2o3E2hrHYyYTlwJ0999h828U7NC4tsLJegQn7e9L"
#end

#client.update('Tweet from the command line!')

#client.search("#ruby").take(50).each do |tweet|
#  puts tweet.text
#end

#client.search("query", {options})

#search_options = {
#  result_type: "recent",
#  geocode: "39.9525839,-75.1652215,10mi"
#}

#client.search("pope", search_options).take(50).each do |tweet|
#  puts "#{tweet.user.screen_name}: #{tweet.text}"
#end

#-----------------------------------Streaming

#client.sample do |object|
#  puts object.text if object.is_a?(Twitter::Tweet)
#end

topics = ["paris"]
client.filter(track: topics.join(",")) do |object|
  puts object.text if object.is_a?(Twitter::Tweet)
end
