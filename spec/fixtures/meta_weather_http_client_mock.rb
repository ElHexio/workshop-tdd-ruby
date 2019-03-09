class MetaWeatherHttpClientMock
  def get(url)
    if url.include?("search")
      city_response
    else
      weather_response
    end
  end

  private

  def city_response
    file_content("#{__dir__}/response/meta_weather/berlin.json")
  end

  def weather_response
    file_content("#{__dir__}/response/meta_weather/berlin_weather.json")
  end

  def file_content(file_path)
    File.open(file_path, "r") do |file|
      JSON.parse(file.read, symbolize_names: true)
    end
  end
end
