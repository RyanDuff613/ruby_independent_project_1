#!/usr/bin/env ruby

require ('./lib/anagrams.rb')

puts "please enter two words and I'll tell you if they are anagrams of one another"
user_entry1 = gets.chomp
puts "got that! now enter your second word"
user_entry2 = gets.chomp

anagrams = Anagrams.new(user_entry1, user_entry2)
if anagrams.is_anagram?()
  puts "your two entries are an anagram"
else
  puts "your two entries are not an anagram"
end