require ('pry')
require ('anagrams')


describe("Anagrams") do
  it("creates a new instance of its class, takes two user inputs as variables and stores their values in instance variables")do
    anagram = Anagrams.new("eat", "at")
    expect(anagram.user_entry1).to(eq("eat"))
  end
end

describe("Anagram#entry_length") do
  it("checks length of user entries to make sure they are equal")do
    anagram = Anagrams.new("eat", "ate")
    expect(anagram.entry_length?()).to(eq(true))
  end
end

describe("Anagram#is_word")do
  it("check to make sure user entries both contain a vowel") do
    anagram = Anagrams.new("eat", "ate")
    expect(anagram.is_word?(anagram.user_entry1)).to(eq(true))
  end
end

describe("Anagrams#is_anagram") do
  it("check to see if single word entries are an anagram") do
    anagram = Anagrams.new("eat", "ate")
    expect(anagram.is_anagram?()).to(eq(true))
  end

  it("checks to see if multi-word entries are anangrams") do
    anagram = Anagrams.new("is a team", "meat si a")
    expect(anagram.is_anagram?()).to(eq(true))
  end
end

