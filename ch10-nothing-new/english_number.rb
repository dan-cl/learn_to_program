def english_number(n)
	if n < 0
		return "Please enter a number that isn't negative."
	end
	if n == 0
		return "zero"
	end

	numberString = ""

	ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
	ten = ["ten", "twenty-", "thirty-", "forty-", "fifty-", "sixty-", "seventy-", "eighty-", "ninety-"]
	teens = ["eleven", "twelve", "thirteen", "forteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

	#checking the thousands

	left = n
	write = left / 1000

	#removing the thousands from the number left

	left = left - write * 1000

	if write > 0

	numberString = english-number(write) + "thousand"

		if left > 0
		numberString = numberString + " "
		end

	end

	#checking hundreds

	write = left / 100

	left = left - write * 100

	if write > 0

		numberString = numberString + english_number(write) + " hundred"

		if left > 0
			numberString = numberString + " "
		end

	end

	# checking tens & teens

	write = left / 10

	left = left - write * 10

	if write > 0
		if write == 1 && left > 0

			numberString = numberString + teens[left-1]

		left = 0

		else
			numberString = numberString + ten[write-1]
		end

		numberString = numberString + ""
	end

	#checking ones
	write = left
	left = 0

	if write > 0

		numberString = numberString + ones[write-1]
	end
	numberString
end


#puts englishNumber(0)
#puts englishNumber(10)
#puts englishNumber(16)
#puts englishNumber(78)
#puts englishNumber(115)
#puts englishNumber(535)
#puts englishNumber(56891)
#puts englishNumber(90001)
#puts englishNumber(107)
