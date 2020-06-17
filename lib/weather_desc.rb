require 'telegram/bot'
require 'net/http'
require 'json'
require 'openssl'
require 'uri'

class Weather

    attr_reader :weather_description

    def initialize
        @weather_description = make_request_to_api_endpoint
    end

    private

    def make_request_to_api_endpoint   
        require 'net/http'
        require 'json'
        
        url = 'http://api.openweathermap.org/data/2.5/weather?q=nairobi&APPID=5c89010425b4d730b7558f57234ea3c8&units=imperial'
        uri = URI(url)
        response = Net::HTTP.get(uri)
        parsed = JSON.parse(response)

        weather_description = (parsed['weather'][0]['description']).to_s
    end
end