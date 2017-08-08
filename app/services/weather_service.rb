class WeatherService
  require 'httparty'
  def self.get_city_weather(city_name)
    HTTParty.get("http://api.openweathermap.org/data/2.5/weather?q=#{city_name}&units=imperial&APPID=94fabbc55aa6e071c53903a38834474b").parsed_response

  end
end
