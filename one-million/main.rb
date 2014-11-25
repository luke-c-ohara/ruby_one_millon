# The code passes the test written and hopefully meets the spec given.
# 95% of the code works ok but I've had to use a gsub for the final part due to the way I went about the code from the start. Because the index of the numbers units, tens, hundreds etc changes as the numbers grow larger it makes it more difficult to write dynamic and DRY code.
# If I had the time again I would start by reversing the number so that the units, tens, hundreds would all be in the same place, then possibly split the larger numbers into three and work from there. Hindsight is a wonderful thing!

require 'pry-byebug'

  def numbers_to_words(num)

    words_hash = ["", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty", "twenty one", "twenty two", "twenty three", "twenty four", "twenty five", "twenty six", "twenty seven", "twenty eight", "twenty nine", "thirty", "thirty one", "thirty two", "thirty three", "thirty four", "thirty five", "thirty six", "thirty seven", "thirty eight", "thirty nine", "forty", "forty one", "forty two", "forty three", "forty four", "forty five", "forty six", "forty seven", "forty eight", "forty nine", "fifty", "fifty one", "fifty two", "fifty three", "fifty four", "fifty five", "fifty six", "fifty seven", "fifty eight", "fifty nine", "sixty", "sixty one", "sixty two", "sixty three", "sixty four", "sixty five", "sixty six", "sixty seven", "sixty eight", "sixty nine", "seventy", "seventy one", "seventy two", "seventy three", "seventy four", "seventy five", "seventy six", "seventy seven", "seventy eight", "seventy nine", "eighty", "eighty one", "eighty two", "eighty three", "eighty four", "eighty five", "eighty six", "eighty seven", "eighty eight", "eighty nine", "ninety", "ninety one", "ninety two", "ninety three", "ninety four", "ninety five", "ninety six", "ninety seven", "ninety eight", "ninety nine"]

    units = {3=>"hundred", 4=>"thousand", 5=>"million"}

      split = num.to_s.split('').map { |digit| digit.to_i }
      size = split.length

      first = split[0].to_s
      tens = split[size-2].to_s + split[size-1].to_s

      conjunctive = if tens == "00" then "" else "and" end
      conjunctive_2 = if split[1].to_s + split[2].to_s == "00" then "" else "and" end              
      hundreds_test = " " + units[3].to_s + " " + conjunctive + " " + words_hash[tens.to_i].to_s

      return_value = case size
        when 1 , 2
          words_hash[num]
        when 3
          "#{words_hash[first.to_i]}" + hundreds_test  
        when 4
          no_of_hundreds = split[1]
          hundreds = size - 1
          "#{words_hash[first.to_i]} #{units[size]} #{words_hash[no_of_hundreds]}" + hundreds_test
        when 5
          first_tens = split[0].to_s + split[1].to_s
          no_of_hundreds = split[2]
          hundreds = size - 2
          thousands = size - 1
          "#{words_hash[first_tens.to_i]} #{units[thousands]} #{words_hash[no_of_hundreds]}" + hundreds_test
        when 6
          tens_h = split[1].to_s + split[2].to_s
          no_of_hundreds = split[3]
          hundreds = size - 3
          thousands = size - 2
          "#{words_hash[first.to_i]} #{units[hundreds]} #{conjunctive_2} #{words_hash[tens_h.to_i]} #{units[thousands]} #{words_hash[no_of_hundreds]}" + hundreds_test 
        when 7
          millions = size - 2
          "#{words_hash[first.to_i]} #{units[millions]}"
      end

      # dear future Luke: Sorry for this ghastly fix, but I've painted myself into a corner with the mappings... this at least gets the test passing. TODO: come back and fix this later... I owe you a beer
      return_value.gsub! /\s+/, " "
      return_value.gsub! 'thousand hundred ', "thousand "
      return_value.strip
  end

  (9999..11000).map do |num|
    puts numbers_to_words(num)
  end 