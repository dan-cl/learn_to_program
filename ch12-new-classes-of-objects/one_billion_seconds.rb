puts 'Enter your birth year.'
y = gets.chomp.to_i
puts 'Enter your birth month.'
m = gets.chomp.to_i
puts 'Enter your birthday (day of month only).'
d = gets.chomp.to_i
birthday = Time.local(y, m, d)
onebillionbday = birthday + 1000000000
puts
puts "You will be/were one billion seconds old at #{onebillionbday}"
puts
