class Word
  def initialize(firstWord, secondWord)
    @firstWord = firstWord.downcase
    @charArr1 = @firstWord.chars
    @secondWord = secondWord.downcase
    @charArr2 = @secondWord.chars
  end

  def vowel_checker()
    vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    i = 0
    j = 0
    @charArr1.each { |letter| 
      vowels.each { |vowel| 
        (letter.include?(vowel) ? i += 1 : i += 0)}}
    @charArr2.each { |letter| 
      vowels.each { |vowel| 
        (letter.include?(vowel) ? j += 1 : j += 0)}}
    
    if i >= 1 && j >=1 
      return true
    else
      return false
    end
  end

  def multiple_words()
    # if (@firstWord.include?(" " || "," || ".") || @secondWord.include?(" " || "," || "."))
    #   "We made it into the punctuation check!"
    # end
    wordsArr1 = @firstWord.split(/[\s,']/)
    puts wordsArr1
    wordsArr2 = @secondWord.split(/[\s,']/)
    puts wordsArr2
    if (wordsArr1.length > wordsArr2.length)
      wordsArr1.each { |word1|  
        wordsArr2.each { |word2| 
          anagram()}}
    elsif (wordsArr2.length > wordsArr1.length)
      wordsArr2.each { |word2| 
        wordsArr1.each { |word1| 
          anagram()}}
    end
  end

  def anagram()
    vowel_checker()
    if vowel_checker()
      if (@charArr1.any? {|letter| @charArr2.include?(letter)} == false)
      # Insert the actual words that are being compared against here. Find the proper syntax #  
      "This is an antigram"
      elsif (@charArr1.length == @charArr2.length)
        # Insert the actual words that are being compared against here. Find the proper syntax #
        "These words are an anagram"
      elsif (@charArr1.length != @charArr2.length)
        "error error error"
      end
    else 
      "Please input an actual word!"
    end  
  end
end