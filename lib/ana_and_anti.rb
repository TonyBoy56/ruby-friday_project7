class Word
  def initialize(firstWord, secondWord)
    @firstWord = firstWord.downcase.gsub(/[^a-z]/, '').chars
    @secondWord = secondWord.downcase.gsub(/[^a-z]/, '').chars
  end

  def vowel_checker()
    vowels = ['a', 'e', 'i', 'o', 'u']
    i = 0
    j = 0
    @firstWord.each { |letter| vowels.each { |vowel| (letter.include?(vowel) ? i += 1 : i += 0)}}
    @secondWord.each { |letter| vowels.each { |vowel| (letter.include?(vowel) ? j += 1 : j += 0)}}
    
    if i >= 1 && j >=1 
      return true
    else
      return false
    end
  end

  def anagram()
    if vowel_checker()
      puts "Got to line 23"
      if (@firstWord.any? {|letter| @secondWord.include?(letter)} == false)
        "This is an antigram"
      elsif (@firstWord.length == @secondWord.length)
        "These words are an anagram"
      end
    end  
  end
end