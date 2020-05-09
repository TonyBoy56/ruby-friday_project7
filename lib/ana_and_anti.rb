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

  def multipleWords()
    # if (@firstWord.include?(" " || "," || ".") || @secondWord.include?(" " || "," || "."))
    #   "We made it into the punctuation check!"
    # end
  end

  def anagram()
    vowel_checker()
    if vowel_checker()
      punctuation = [" ", ",", "."]
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