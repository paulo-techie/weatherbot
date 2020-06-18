require 'telegram/bot'
require 'net/http'
require 'json'
require 'openssl'
require 'uri'
require 'open-uri'

# weather_desc.rb
class Weather
  attr_reader :weather_description, :country_name, :region

  def initialize
    @country_name = ''
    @region = ''
    @weather_description = make_request_to_api_endpoint
  end

  def make_request_to_api_endpoint
    api = '2745510d199eb84e68a506d68e71467a'
    url_data = 'http://api.openweathermap.org/data/2.5/weather?'
    url = "#{url_data}#{location}&appid=#{api}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    parsed = JSON.parse(response)
    weather_description = (parsed['weather'][0]['description']).to_s
    @region = (parsed['name']).to_s
    weather_description
  end

  def location
    url = 'https://reallyfreegeoip.org/json/'
    uri = URI(url)
    response = Net::HTTP.get(uri)
    parsed = JSON.parse(response)
    @country_name = (parsed['country_name']).to_s
    lat = (parsed['latitude']).to_s
    lon = (parsed['longitude']).to_s
    "lat=#{lat}&lon=#{lon}"
  end
end
