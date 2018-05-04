require "./spec_helper"

describe CEP::Sanitizer do
  describe "#process" do
    it "removes all chars but numbers" do
      sanitized = CEP::Sanitizer.process "a1b2b3b4b5"
      sanitized.should eq "12345"
    end

    it "selects the first eight numbers" do
      sanitized = CEP::Sanitizer.process "123456789"
      sanitized.should eq "12345678"
    end

    it "process integers returning strings" do
      sanitized = CEP::Sanitizer.process 80210130
      sanitized.should eq "80210130"
    end
  end
end
