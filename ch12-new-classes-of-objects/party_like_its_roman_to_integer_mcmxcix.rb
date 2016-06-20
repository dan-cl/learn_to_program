def roman_to_integer roman
  rtoi = {'i' => 1, #Create hash with roman numeral to value pairs.
          'v' => 5,
          'x' => 10,
          'l' => 50,
          'c' => 100,
          'd' => 500,
          'm' => 1000}

  romanarray = []

  roman.each_char do |chr| #Take the string parameter & push each character into an array.
    romanarray.push chr.downcase
  end
  counter = 0
  value = 0
  while counter < romanarray.length - 1 #-1 required to stop nxt going beyond the last array value.
    current = rtoi[romanarray[counter]] #Assign current and next character values.
    nxt = rtoi[romanarray[counter + 1]]

    if current == nil #Check current character is a roman numeral (nil is the default return if a key does not exist.)
      puts 'This is not a roman numeral'
      return
    elsif current >= nxt
      value = value + current
      counter = counter + 1
    else
      current = nxt - current
      value = value + current
      counter = counter + 2 #+2 required as these character pairs are one number i.e iv = 4
    end

  end

  if rtoi[romanarray[-1]] <= rtoi[romanarray[-2]] #Picks up the last character in the array if it's not part of a pair.
    value = value + rtoi[romanarray[-1]]
  end

puts value

end



puts(roman_to_integer('mcmxcix'))
puts(roman_to_integer('CCCLXV'))
puts(roman_to_integer('pht'))
