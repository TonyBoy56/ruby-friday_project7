require('rspec')
require('ana_and_anti')
require('pry')

describe ("#ana_and_anti") do
  it ('the program will return true if the words are anagrams') do
    theirWords = CheckWord.new('tea', 'eat')
    expect(theirWords.anagram()).to(eq(true))
  end
end
