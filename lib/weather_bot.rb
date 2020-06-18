# frozen_string_literal: true

require 'telegram/bot'
require './lib/weather_desc'

# weather_bot.rb
class WeatherBot
  def initialize
    token = '1295585207:AAFPZlHbo2WWdh9oseszmgG4qsS6Yba7yMs'
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        weather = Weather.new
        bot.api.send_message(chat_id: message.chat.id, text: 'Hello, ' \
          "#{message.from.first_name}!\nWelcome to your friendly weatherbot!\n" \
          "#{weather.country_name} is a beautiful country.\nWe expect " \
          "#{weather.weather_description} in #{weather.region} today ...\nGoodbye ...")
        break
      end
    end
  end
end
