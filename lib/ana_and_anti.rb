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
          puts "working on ...", word1, word2
          @charArr1 = ch1
          @charArr2 = word2.chars
          puts "This is what charArr1 contains", @charArr1
          puts "This is what charArr2 contains", @charArr2
          anagram()
          
          }}
    elsif (wordsArr2.length > wordsArr1.length)
      wordsArr2.each { |word2| 
        wordsArr1.each { |word1| 
          anagram()
          }}
    end
  end

  def anagram()
    vowel_checker()
    puts "did we make it?"
    if vowel_checker()
      puts "yeah?"
      puts @charArr1, @charArr2
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