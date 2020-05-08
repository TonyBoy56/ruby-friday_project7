class CheckWord
  attr_reader(:firstWord, :secondWord)
  attr_writer(:firstWord, :secondWord)
  attr_accessor(:firstWord, :secondWord)
  
  def initialize(firstWord, secondWord)
    @firstWord = firstWord.downcase.gsub(/[^a-z]/, '').chars
    puts @firstWord
    @secondWord = secondWord.downcase.gsub(/[^a-z]/, '').chars
    puts @secondWord
  end

  def vowelChecker()
    vowels = ['a', 'e', 'i', 'o', 'u']
    i = 0
    j = 0
    @firstWord.each { |char| vowels.each { |vowel| (char.include?(vowel) ? i += 1 : x += 0)}}
    @secondWord.each { |char| vowels.each { |vowel| (char.include?(vowel) ? j += 1 : j += 0)}}
    if i >= 1 && j >=1 
      return true
    else
      return false
    end
  end

  def anagram()
    if vowelChecker()
      includesChecker = @firstWord.any? {|char| @secondWord.include?(char)}
      if (includesChecker == false)
        "This is an antigram"
      elsif (includesChecker == true && @firstWord.length == @secondWord.length)
        "These words are an anagram"
      end
    end  
  end

end
