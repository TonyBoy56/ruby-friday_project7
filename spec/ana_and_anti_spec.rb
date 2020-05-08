require('rspec')
require('ana_and_anti')
require('pry')

describe ("#ana_and_anti") do
  it('the program checks for vowels in the two words') do
    theirWords = Word.new('tea', 'eat')
    expect(theirWords.vowel_checker()).to(eq(true))
  end
  
  it('the program will return true if the words are anagrams') do
    theirWords = Word.new('tea', 'eat')
    expect(theirWords.anagram()).to(eq("These words are an anagram"))
  end
end