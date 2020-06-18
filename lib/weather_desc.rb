require 'telegram/bot'
require 'net/http'
require 'json'
require 'openssl'
require 'uri'
require 'open-uri'

class Weather

    attr_reader :weather_description, :region

    def initialize
        @region = ""
        @weather_description = make_request_to_api_endpoint
    end

    private

    def make_request_to_api_endpoint
        url="http://api.openweathermap.org/data/2.5/weather?#{location}&appid=2745510d199eb84e68a506d68e71467a"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        parsed = JSON.parse(response)
        weather_description = (parsed['weather'][0]['description']).to_s
    end

    def location
        url="https://reallyfreegeoip.org/json/"
        uri = URI(url)
        response = Net::HTTP.get(uri)
        parsed = JSON.parse(response)
        @region = (parsed['country_name']).to_s
        lat = (parsed['latitude']).to_s
        lon = (parsed['longitude']).to_s   
        "lat=#{lat}&lon=#{lon}"
    end
      
end