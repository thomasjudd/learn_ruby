def echo(msg)
    msg
end

def shout(msg)
    msg.upcase
end
def repeat(msg, numtimes=2)
   (msg + " ")*(numtimes-1) + msg 
end

def start_of_word(msg, len)
   msg[0..len-1]
end

def first_word(msg)
    ind = msg.index(" ")
    msg[0..ind-1]
end

def titleize(msg)
   title = ""
   msg = msg[0].upcase + msg[1..-1]
   arr = msg.split
   little_words = ["and", "the", "over"]

   arr.each{|word|
       if little_words.include?(word)
           title += word + " "
       else
           title += word[0].upcase + word[1..-1] + " "
       end
   }
   title = title[0..-2]
end
