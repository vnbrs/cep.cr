module Cep
  class Address
    property bairro, cidade, logradouro, codigo_ibge, uf, estado : String = ""

    def initialize(cep)
      cep = cep.delete "^0-9"
      response = Cep::Service.get(cep)
    end
  end
end
