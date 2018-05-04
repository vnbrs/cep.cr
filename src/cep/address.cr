require "./service"
require "json"

module CEP
  class Address
    JSON.mapping(
      cep:          {key: "cep",        type: String},
      neighborhood: {key: "bairro",     type: String},
      city:         {key: "cidade",     type: String},
      street:       {key: "logradouro", type: String},
      state:        {key: "estado",     type: String},
    )

    def self.find(cep)
      cep = CEP::Sanitizer.process cep
      response = CEP::Service.get(cep)
      Address.from_json response
    end
  end
end
