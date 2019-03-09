# frozen_string_literal: true

require 'cgi'

class MetaWeatherHttpClientMock
  def get(url)
    if url.include?('search')
      city_response(url)
    else
      weather_response
    end
  end

  private

  def city_response(url)
    query_params = CGI.parse(URI(url).query)
    city = query_params['query'].first
    file_content("#{__dir__}/response/meta_weather/#{city}.json")
  end

  def weather_response
    file_content("#{__dir__}/response/meta_weather/berlin_weather.json")
  end

  def file_content(file_path)
    File.open(file_path, 'r') do |file|
      JSON.parse(file.read, symbolize_names: true)
    end
  end
end
