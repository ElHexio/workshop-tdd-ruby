# frozen_string_literal: true

require 'open-uri'
require 'json'

class HttpClient
  def get(url)
    response = OpenURI.open_uri(url).read
    JSON.parse(response, symbolize_names: true)
  end
end
