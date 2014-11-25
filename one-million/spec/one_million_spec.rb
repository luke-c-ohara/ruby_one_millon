require_relative 'spec_helper'
require_relative '../main.rb'

# uses 'rspec spec' in command line to run tests

describe "#numbers_to_words" do
  it "converts 1 to words" do
    expect(numbers_to_words(1)).to eq "one"
  end

  it "converts 14 to words" do
    expect(numbers_to_words(14)).to eq "fourteen"
  end

  it "converts 3333 to words" do
    expect(numbers_to_words(3333)).to eq "three thousand three hundred and thirty three"
  end

  it "passes for Global Personals examples" do
    {
      1 => "one",
      2 => "two",
      3 => "three",
      112 => "one hundred and twelve",
      113 => "one hundred and thirteen",
      999 => "nine hundred and ninety nine",
      1000 => "one thousand",
      1001 => "one thousand and one",
      417154 => "four hundred and seventeen thousand one hundred and fifty four",
      417155 => "four hundred and seventeen thousand one hundred and fifty five",
      999999 => "nine hundred and ninety nine thousand nine hundred and ninety nine",
      1000000 => "one million",
    }.each_pair do |k, v|
      expect(numbers_to_words(k)).to eq v
    end 
  end
end


