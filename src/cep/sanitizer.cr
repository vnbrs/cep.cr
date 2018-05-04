module CEP
  class Sanitizer
    def self.process(cep)
      cep.to_s.delete("^0-9")[0..7]
    end
  end
end
