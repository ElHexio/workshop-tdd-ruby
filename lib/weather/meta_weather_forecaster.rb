# frozen_string_literal: true

class MetaWeatherForecaster
  def initialize(http_client = nil)
    @http_client = http_client || HttpClient.new
  end

  def forecast(city)
    forecast = city_forecast(city)
    raise RuntimeError('Cannot fetch forecast') if forecast[:consolidated_weather]&.first.nil?

    first_station = forecast[:consolidated_weather].first
    { city: city, temperature: first_station[:the_temp].to_f.round(1) }
  end

  private

  def city_forecast(city)
    city_data = find_city(city)
    raise RuntimeError('Cannot find city') unless city_data.include?(:woeid)

    @http_client.get("https://www.metaweather.com/api/location/#{city_data[:woeid]}")
  end

  def find_city(city)
    @http_client.get("https://www.metaweather.com/api/location/search/?query=#{city}").first
  end
end
