class Book
    attr_reader :title
    def title=(new_title)
        #arr = title.split(" ")
	#arr.each{ |word|
	#    word.capitalize!
	#}
	small_words=['or', 'and' ,'the', 'a', 'an', 'in', 'of']
	arr = new_title.split(" ")
	arr.each{|word|
	    if not small_words.include? word or arr.index(word) == 0 
	        word.capitalize!
	    end
	}
	@title=arr.join(" ")
    end
end
