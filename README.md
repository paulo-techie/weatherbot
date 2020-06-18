# Weather Bot

> A friendly telegram bot that describes the weather today in your location ...

![screenshot](./app_screenshot.png)

The program creates and initiazes a Telegram bot. The program then retrieves the user name for a friendly greeting. Then program then uses a geolocation API service to detect your country location using your IP address. The longitude and latitude from the location data retrieved using the IP address is used is then passed on to weather API to provide the name of the local region and the weather description which is then displayed as part of the greeting in the telegram message from the telegram bot. 

## Built With

- Ruby

## APIs

- https://core.telegram.org/bots/api
- http://api.openweathermap.org
- https://reallyfreegeoip.org


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

Ruby (at least ver 2.1)

### Setup

Copy weatherbot folder to your working directory

### Install gems

gem install telegram-bot-ruby
gem install open-weather
bundle install

### Usage

ruby bin/main.rb

### Run tests

rspec



## Author

👤 Paul Omondi

- Github: [@paulo-techie](https://github.com/githubhandle)
- Linkedin: [@paul-o-43051a31](https://www.linkedin.com/in/paul-o-43051a31/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](lic.url) licensed.
