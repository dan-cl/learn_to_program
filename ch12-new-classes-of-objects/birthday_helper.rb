bdayarray = []
bdayhash = Hash.new

File.readlines('birthdates.txt').each do |line|
  bdayarray = line.split(',')
  name = bdayarray[0]
  date = bdayarray[1] + bdayarray [2]
  bdayhash[name] = date

end

puts'Enter name'
namecheck = gets.chomp

if bdayhash.include? (namecheck)
  puts bdayhash[namecheck]
else
  puts 'Name not found.'
end
