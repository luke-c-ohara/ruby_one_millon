require 'pry-byebug'

words_hash = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine", 10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",17=>"seventeen", 18=>"eighteen",19=>"nineteen", 20=>"twenty", 30=>"thirty"}

(1..30).each do |num|
  if num <= 20
    puts words_hash[num]
  else
    split = num.to_s.split('').map { |digit| digit.to_i }
    first = split.first * 10
    second = split.last 
    puts words_hash[first] + words_hash[second]
  end
end   