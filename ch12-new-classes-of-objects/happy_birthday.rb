puts 'What year were you born in?'
y = gets.chomp.to_i
puts 'What month were you born?'
m = gets.chomp.to_i
puts 'What day of the month were you born?'
d = gets.chomp.to_i
birthday = Time.local(y, m, d)
timenow = Time.new
age_in_sec = timenow - birthday
age_in_yrs = age_in_sec/60/60/24/365
puts 'SPANK! ' * age_in_yrs
