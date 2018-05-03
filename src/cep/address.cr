module Cep
  class Address
    property neighborhood, city, address, ibge_code, state, state_abbreviation : String = ""

    def initialize(cep)
      cep = cep.delete "^0-9"
      response = Cep::Service.get(cep)
    end
  end
end
