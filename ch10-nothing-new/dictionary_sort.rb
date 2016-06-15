def dictionary_sort arr
  lowerwords=[] #create an empty array to copy lowercase words into
  sortedwords=[] #to be used to store sorted word with correct case
  lowerwords = arr.map(&:downcase) #populate hash with lowercase copies of words
  wordcount = 0 #word count required to number words as they are entered into the following hash
  wordhash = Hash.new #create a new hash where words can be stored along with their position in the original array
  while wordcount < arr.length #needed to stop the loop when all words in the array have been put into--
    #--the hash *maybe could use .each on the array instead
    if wordhash.has_key? lowerwords[wordcount] #check if word has already been used as a key,--
      lowerwords[wordcount] = lowerwords[wordcount] + '1' #--if so, put a 1 on the end of it.
    else
    wordhash[lowerwords[wordcount]] = wordcount #put each word in the lowerwords array into the hash as a key--
    #-- and put the position of the word in the array as the value
    wordcount = wordcount + 1
    end
  end
  wordhash = wordhash.sort
  wordhash.each do |word, pos| #call each word/position pair in word (now alphabetical) order. Use the position value--
   sortedwords = arr[pos] #--to locate the word in the original unsorted array and put the word into the new--
   #--sorted array in the correct order
   puts sortedwords #output to screen to check work


  end
end


words = []
puts 'Enter words'
input = gets.chomp
  while input !=''
    words.push input
    input = gets.chomp
  end

  dictionary_sort words
