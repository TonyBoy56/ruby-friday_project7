class Word
  def initialize(firstWord, secondWord)
    @firstWord = firstWord.downcase.chars
    puts @firstWord
    @secondWord = secondWord.downcase.chars
    puts @secondWord
  end

  def vowel_checker()
    vowels = ['a', 'e', 'i', 'o', 'u', 'y']
    i = 0
    j = 0
    @firstWord.each { |letter| 
      vowels.each { |vowel| 
        (letter.include?(vowel) ? i += 1 : i += 0)}}
    @secondWord.each { |letter| 
      vowels.each { |vowel| 
        (letter.include?(vowel) ? j += 1 : j += 0)}}
    
    if i >= 1 && j >=1 
      return true
    else
      return false
    end
  end

  def anagram()
    if vowel_checker()
      punctuation = " ", ",", "."
      if (@firstWord.any? {|letter| @secondWord.include?(letter)} == false)
        "This is an antigram"
      elsif (@firstWord.include?(punctuation) || @secondWord.include?(punctuation))
        puts "We made it to the punctuation check!"
      elsif (@firstWord.length == @secondWord.length)
        "These words are an anagram"
      end
    else 
      "Please input an actual word!"
    end  
  end
end