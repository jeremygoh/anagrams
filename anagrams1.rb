#need to be able to find something in an array, remove it and add to list. 
#keep searching through the list until nothing found. then use next word to search.
#only iterate through 1st order elements of hte list

#do some sort of select if things match the condition
#if things match the condition, add it to 1, remove from array 
#repeat


def anagrams(inputarr)
	
	@input = inputarr

	def wordmatch(x,y)
		if x.chars.size != y.chars.size
			false
		elsif
			word


	inputarr.select{|x| 
		#some function which determines if letters match
	}

	end

end

















=begin
def word_anagram(word1, word2)
	word1chars = word1.chars
	word2chars = word2.chars

	exit if word1chars.size != word2chars.size #will this break work? will it stop whole process from continuing
		


	word1chars.each do |x|
			word2chars.include?(x)
			exit if false
		end

	puts "True"

end

=end

