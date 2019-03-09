require "workshop_tdd/meta_weather_forecaster"
require "workshop_tdd/http_client"
require "workshop_tdd/weather"

module WorkshopTdd
  def self.forecast(city)
    forecaster = MetaWeatherForecaster.new
    forecaster.forecast(city)
  end
end
