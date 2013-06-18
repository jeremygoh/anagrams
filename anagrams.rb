#is there a way to exit the each loop early if we find a letter is not included? ##now implemented

def anagrams(words)
	
	@yesno= false
	@to_delete=[]
	if words==[]
		return []

	elsif words.size==1
		return words
	else
		#run some method which checks each word in an array and adds it to its own array if it matches. 
		#upon adding due to a match, delete the original from words

		endrange=words.size-1
		

		for i in (0..endrange)
			@inum=i
			#unless words[i].chars.size != words[i+1].chars.size
				for y in (@inum+1..endrange)
				
					unless @to_delete.include?(words[y])

						if words[@inum].is_a?(Array)
							@a = words[@inum].first.chars 
						else
							@a=words[@inum].chars
						end	

						if @a.size != words[y].chars.size
							@yesno=false
						else	
							@a.each do |x|
							included = words[y].include?(x)
							 	if !included
									break
									
								else
									@yesno=true
								end
							end	

							if @yesno && words[@inum].is_a?(Array)
								words[@inum] = words[@inum] << words[y]
								@to_delete << words[y]

							elsif @yesno
								words[@inum] = [words[@inum]] << words[y]
								@to_delete << words[y]
							end
						end
					end
				end		
		end

	
		unless @to_delete == []
			@to_delete.each do |delete1|
				words.delete(delete1)
			end
		end

=begin	

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
=end

		return words 
	end

end #end of def



