require_relative 'spec_helper'
require_relative '../main.rb'


describe "#numbers_to_words" do
  it "converts 1 to one" do
    expect(numbers_to_words(1)).to eq "one"
  end

  it "passes for GP examples" do
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






# describe "#numbers_to_words" do
#   it "converts 2 to two" do
#     numbers_to_words(2)
#     expect "two"
#   end
# end

# describe "#numbers_to_words" do
#   it "converts 3 to three" do
#     numbers_to_words(3)
#     expect "three"
#   end
# end

# describe "#numbers_to_words" do
#   it "converts 112 to one hundred and twelve" do
#     numbers_to_words(112)
#     expect "one hundred and twelve"
#   end
# end

# describe "#numbers_to_words" do
#   it "converts 113 to one hundred and thirteen" do
#     numbers_to_words(113)
#     expect "one hundred and thirteen"
#   end
# end

# describe "#numbers_to_words" do
#   it "converts 999 to nine hundred and ninety nine" do
#     numbers_to_words(999)
#     expect "nine hundred and ninety nine"
#   end
# end

# describe "#numbers_to_words" do
#   it "converts 1000 to one thousand" do
#     numbers_to_words(1000)
#     expect "one thousand"
#   end
# end

# describe "#numbers_to_words" do
#   it "converts 1001 to one thousand and one" do
#     numbers_to_words(1001)
#     expect "one thousand and one"
#   end
# end

# describe "#numbers_to_words" do
#   it "converts 417154 to four hundred and seventeen thousand one hundred and fifty four" do
#     numbers_to_words(417154)
#     expect "four hundred and seventeen thousand one hundred and fifty four"
#   end
# end

# describe "#numbers_to_words" do
#   it "converts 417155 to four hundred and seventeen thousand one hundred and fifty five" do
#     numbers_to_words(417155)
#     expect "four hundred and seventeen thousand one hundred and fifty five"
#   end
# end

# describe "#numbers_to_words" do
#   it "converts 999999 to nine hundred and ninety nine thousand nine hundred and ninety nine" do
#     numbers_to_words(999999)
#     expect "nine hundred and ninety nine thousand nine hundred and ninety nine"
#   end
# end

# describe "#numbers_to_words" do
#   it "converts 1000000 to one million" do
#     numbers_to_words(1000000)
#     expect "one million"
#   end
# end
