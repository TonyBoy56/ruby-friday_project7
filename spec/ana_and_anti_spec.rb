require('rspec')
require('ana_and_anti')
require('pry')

describe ("#ana_and_anti") do
  # it('the program checks for vowels in the two words') do
  #   theirWords = Word.new('tea', 'eat')
  #   expect(theirWords.vowel_checker()).to(eq(true))
  # end
  
  # it('the program will return a confirmation if the words are anagrams') do
  #   theirWords = Word.new('tea', 'eat')
  #   expect(theirWords.anagram()).to(eq("These words are an anagram"))
  # end

  # it('the program will return a confirmation if the words are ANTIGRAMS') do
  #   theirWords = Word.new('sup', 'hello')
  #   expect(theirWords.anagram()).to(eq("This is an antigram"))
  # end

  # it('the program will produce an error statement if there are no actual word inputs') do
  #   theirWords = Word.new('spd', 'tnl')
  #   expect(theirWords.anagram()).to(eq("Please input an actual word!"))
  # end

  # it('the program will check that different cases do not effect anagram check') do
  #   theirWords = Word.new('Tea', 'Eat')
  #   expect(theirWords.anagram()).to(eq("These words are an anagram"))
  # end
  
  it('the program will eliminate spaces and punctuation should the user input more than one word per input, accounting for multiple anagram/antigrams.') do
    theirWords = Word.new('tea, stop', 'eat, pots')
    expect(theirWords.anagram()).to(eq("We made it into the punctuation check!"))
  end
end