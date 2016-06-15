def shuffle arr
  new_arr = []
  shuffled = []
  wordcount = 0
  allreadyshuffled = []
  while wordcount < arr.length
    randnum = rand(arr.length)
    if randnum != wordcount && !(allreadyshuffled.include? randnum)
      shuffled.push arr[randnum]
      wordcount = wordcount + 1
      allreadyshuffled.push randnum
    else
    end
  end
 puts ''
 puts shuffled
 return shuffled

end


words = []
puts 'Enter words'
input = gets.chomp
  while input != ''
    words.push input
    input = gets.chomp
  end


shuffle words
