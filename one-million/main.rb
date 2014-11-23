require 'pry-byebug'

  def numbers_to_words

    words_hash = {0=>"",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine", 10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",17=>"seventeen", 18=>"eighteen",19=>"nineteen", 20=>"twenty", 21=>"twenty one",22=>"twenty two",23=>"twenty three",24=>"twenty four",25=>"twenty five",26=>"twenty six",27=>"twenty seven",28=>"twenty eight",29=>"twenty nine",30=>"thirty", 31=>"thirty one",32=>"thirty two",33=>"thirty three",34=>"thirty four",35=>"thirty five",36=>"thirty six",37=>"thirty seven",38=>"thirty eight",39=>"thirty nine", 40=>"forty", 41=>"forty one",42=>"forty two",43=>"forty three",44=>"forty four",45=>"forty five",46=>"forty six",47=>"forty seven",48=>"forty eight",49=>"forty nine", 50=>"fifty", 51=>"fifty one",52=>"fifty two",53=>"fifty three",54=>"fifty four",55=>"fifty five",56=>"fifty six",57=>"fifty seven",58=>"fifty eight",59=>"fifty nine", 60=>"sixty", 61=>"sixty one",62=>"sixty two",63=>"sixty three",64=>"sixty four",65=>"sixty five",66=>"sixty six",67=>"sixty seven",68=>"sixty eight",69=>"sixty nine", 70=>"seventy", 71=>"seventy one",72=>"seventy two",73=>"seventy three",74=>"seventy four",75=>"seventy five",76=>"seventy six",77=>"seventy seven",78=>"seventy eight",79=>"seventy nine", 80=>"eighty", 81=>"eighty one",82=>"eighty two",83=>"eighty three",84=>"eighty four",85=>"eighty five",86=>"eighty six",87=>"eighty seven",88=>"eighty eight",89=>"eighty nine", 90=>"ninety", 91=>"ninety one",92=>"ninety two",93=>"ninety three",94=>"ninety four",95=>"ninety five",96=>"ninety six",97=>"ninety seven",98=>"ninety eight",99=>"ninety nine"}

    units = {3=>"hundred", 4=>"thousand", 5=>"million"}

    (99999..110000).each do |num|

      split = num.to_s.split('').map { |digit| digit.to_i }
      size = split.length

      first = split[0].to_s
      tens = split[size-2].to_s + split[size-1].to_s

      conjunctive = if tens == "00"
                     ""
                    else
                    "and"
                    end

      conjunctive_2 = if split[1].to_s + split[2].to_s == "00"
                      ""
                    else
                    "and"
                    end

      case size
        when 1 , 2
          puts words_hash[num]
        when 3
          puts "#{words_hash[first.to_i]} #{units[size]} #{conjunctive} #{words_hash[tens.to_i]}"  
        when 4
          no_of_hundreds = split[1]
          hundreds = size - 1
          puts "#{words_hash[first.to_i]} #{units[size]} #{words_hash[no_of_hundreds]} #{units[hundreds]} #{conjunctive} #{words_hash[tens.to_i]}" 
        when 5
          first_tens = split[0].to_s + split[1].to_s
          no_of_hundreds = split[2]
          hundreds = size - 2
          thousands = size - 1
          puts "#{words_hash[first_tens.to_i]} #{units[thousands]} #{words_hash[no_of_hundreds]} #{units[hundreds]} #{conjunctive} #{words_hash[tens.to_i]}" 
        when 6
          tens_h = split[1].to_s + split[2].to_s
          no_of_hundreds = split[3]
          hundreds = size - 3
          thousands = size - 2
          puts "#{words_hash[first.to_i]} #{units[hundreds]} #{conjunctive_2} #{words_hash[tens_h.to_i]} #{units[thousands]} #{words_hash[no_of_hundreds]} #{units[hundreds]} #{conjunctive} #{words_hash[tens.to_i]}" 
        when 7
          millions = size - 2
          puts "#{words_hash[first.to_i]} #{units[millions]}"
      end
    end

  end

  numbers_to_words











  