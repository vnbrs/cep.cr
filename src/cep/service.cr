require "http/client"
require "json"
require "./exceptions"

module CEP
  class Service
    BASE_URL = "http://api.postmon.com.br"

    def self.get(cep)
      response = HTTP::Client.get("#{BASE_URL}/v1/cep/#{cep}")

      return JSON.parse(response.body) if response.status_code == 200
      raise CEP::ApiRequestError.new("The API responded with #{response.status_code}")
    end
  end
end
