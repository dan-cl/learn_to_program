def old_roman_numeral num
  # your code here
  output = 'M' * (num/1000)
  num = num%1000
  output << "D" * (num/500)
  num = num%500
  output <<  "C" * (num/100)
  num = num%100
  output << "L" * (num/50)
  num = num%50
  output << "X" * (num/10)
  num = num%10
  output << "V" * (num/5)
  num = num%5
  output << "I" * num
  return output
end

puts 'Enter number'
old_roman_numeral gets.chomp.to_i
