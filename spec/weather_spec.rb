require "fixtures/meta_weather_http_client_mock"

RSpec.describe MetaWeatherForecaster do
  it "should return weather" do
    http_client = MetaWeatherHttpClientMock.new

    forecaster = MetaWeatherForecaster.new(http_client)
    weather_forecast = forecaster.forecast("Berlin")

    expected = Weather.new({city: "Berlin", temperature: 8.9})

    assert { expect(weather_forecast.attributes).to eq(expected.attributes) }
  end
end
