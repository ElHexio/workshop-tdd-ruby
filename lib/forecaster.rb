# frozen_string_literal: true

require 'weather/meta_weather_forecaster'
require 'weather/http_client'

module Forecaster
  def self.forecast(city)
    forecaster = MetaWeatherForecaster.new
    forecaster.forecast(city)
  end
end
