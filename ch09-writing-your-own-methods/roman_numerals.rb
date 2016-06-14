def roman_numeral num
  # your code here
  output = 'M' * (num/1000)
  num = num%1000
  output << 'CM' * (num/900)
  num = num%900
  output << "D" * (num/500)
  num = num%500
  output << "CD" * (num/400)
  num = num%400
  output << "C" * (num/100)
  num = num%100
  output << "XC" * (num/90)
  num = num%90
  output << "L" * (num/50)
  num = num%50
  output << "XL" * (num/40)
  num = num%40
  output << "X" * (num/10)
  num = num%10
  output << "IX" * (num/9)
  num = num%9
  output << "V" * (num/5)
  num = num%5
  output << "IV" * (num/4)
  num = num%4
  output << "I" * num
  puts output
  return output
end


puts "enter numer"
roman_numeral gets.chomp.to_i
