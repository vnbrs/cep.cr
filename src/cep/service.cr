require "http/client"
require "json"

module Cep
  class Service
    BASE_URL = "http://api.postmon.com.br"

    def self.get(cep)
      response = HTTP::Client.get("#{BASE_URL}/v1/cep/#{cep}")

      if response.status_code == 200
        return JSON.parse(response.body)
      else
        # TODO raise exception
      end
    end
  end
end
