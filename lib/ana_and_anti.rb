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
    wordsArr1 = @firstWord.split(/[\s,']/)
    wordsArr2 = @secondWord.split(/[\s,']/)
    if (wordsArr1.length > wordsArr2.length)
      wordsArr1.each { |word1|  
        ch1 = word1.chars
        wordsArr2.each { |word2|
          @charArr1 = ch1
          @charArr2 = word2.chars
          anagram()
          }}
    elsif (wordsArr2.length > wordsArr1.length)
      wordsArr2.each { |word2| 
        ch2 = word2.chars
        wordsArr1.each { |word1|
          @charArr2 = ch2
          @charArr1 = word1.chars 
          anagram()
          }}
    end
  end

  def anagram()
    vowel_checker()
    if vowel_checker()
      if (@charArr1.any? {|letter| @charArr2.include?(letter)} == false)
        "This is an antigram"
      elsif (@charArr1.length == @charArr2.length)
        "These words are an anagram"
      end
    else 
      "Please input an actual word!"
    end  
  end
end