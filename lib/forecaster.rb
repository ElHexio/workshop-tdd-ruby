require "weather/meta_weather_forecaster"
require "weather/http_client"
require "weather/weather"

module Forecaster
  def self.forecast(city)
    forecaster = MetaWeatherForecaster.new
    forecaster.forecast(city)
  end
end
