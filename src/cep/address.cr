require "service"

module Cep
  class Address
    property neighborhood, city, address, state, state_abbreviation : String = ""

    def initialize(cep)
      cep = cep.delete "^0-9"
      response = Cep::Service.get(cep)
      fill_from response
    end

    private def fill_from(response)
      neighborhood = response["bairro"]
      city = response["cidade"]
      address = response["logradouro"]
      state = response["estado_info"]["nome"]
      state_abbreviation = response["estado"]
    end
  end
end
