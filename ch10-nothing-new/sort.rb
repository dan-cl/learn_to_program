def sort words
  sorted = []
  new_unsorted = []
  unsorted = words.dup
  	until unsorted.empty?
  		smallest = unsorted.pop
  		unsorted.each do |word|
  			if word < smallest
  				new_unsorted.push smallest
  				smallest = word
  			else
  				new_unsorted.push word
  			end
  		end
  			sorted.push smallest
  			unsorted=new_unsorted.dup
  			new_unsorted = []

  end
  	puts sorted
    return sorted

end


words = []
puts "Enter words."
input=gets.chomp
	while input != ""
		words.push input
		input = gets.chomp
	end

sort words
