require "./service"

module CEP
  class Address
    property \
      cep = "",
      neighborhood = "",
      city = "",
      street = "",
      state = "",
      state_abbreviation = ""

    def self.find(cep)
      cep = CEP::Sanitizer.process cep
      response = CEP::Service.get(cep)

      address = Address.new
      address.fill_from response

      address
    end

    def fill_from(response)
      self.cep = response["cep"].as_s
      self.neighborhood = response["bairro"].as_s
      self.city = response["cidade"].as_s
      self.street = response["logradouro"].as_s
      self.state = response["estado_info"]["nome"].as_s
      self.state_abbreviation = response["estado"].as_s
    end
  end
end
