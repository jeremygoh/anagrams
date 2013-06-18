def anagrams(words)
	
	@yesno= false
	if words==[]
		return nil
	else
		if words[0].chars.size != words[1].chars.size
			return words
		else	
			first_word=words[0].chars
		
			first_word.each do |x|
				if words[1].include?(x)
					@yesno=true
				else
					@yesno=false
				end
			end

			if @yesno
				words[0] = [words[0]] << words[1]
				words.delete_at(1)
			end


		return words 
		end #end of if which checks that letters are of the same length, if not then they clearly don't match. Maybe should sort words by size initially?
	end #end of overarching if that checks if array is 0/1
end