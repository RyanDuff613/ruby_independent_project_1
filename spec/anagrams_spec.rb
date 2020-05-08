require ('pry')
require ('anagrams')

describe("Anagrams") do
  it("creates a new instance of its class, takes two user inputs as variables and stores their values in instance variables")do
    anagram = Anagrams.new("eat", "at")
    expect(anagram.user_entry1).to(eq("eat"))
  end

end
