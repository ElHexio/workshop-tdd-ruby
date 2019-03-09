class Weather
  attr_accessor :weather

  def initialize(weather)
    @weather = weather
  end

  def method_missing(method_name, *args, &block)
    @weather[method_name.to_sym]
  end

  def respond_to?(method_name, include_private = false)
    @weather.include?(method_name.to_sym)
  end
end
