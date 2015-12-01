def translate(str)
    pigified = ""
    vowels = ['a', 'e', 'i', 'o', 'u']
    phonemes = ['ch', 'th', 'sh', 'qu', 'br']
    threenemes = ['thr', 'chr', 'shr', 'sch','squ']
    arr = str.split
    arr.each{|word|
       if vowels.include?(word[0])
          pigified += word + "ay"+ " "
       elsif threenemes.include?(word[0..2])
          pigified += word[3..-1] + word[0..2] + "ay" + " "
       elsif phonemes.include?(word[0..1])
          pigified += word[2..-1] + word[0..1] + "ay" + " "
       elsif not vowels.include?(word[0])
          pigified += word[1..-1] + word[0] + "ay" + " "
       end
    }
    pigified[0..-2]
end
