require "open-uri"
require "json"

class HttpClient
  def get(uri)
    response = open(URI.parse(uri)).read
    JSON.parse(response, symbolize_names: true)
  end
end
