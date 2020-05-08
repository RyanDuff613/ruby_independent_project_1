require ('rspec')
require ('pry')

class Anagrams
  attr_reader(:user_entry1, :user_entry2)
  

  def initialize (user_entry1, user_entry2)
    @user_entry1 = user_entry1.downcase()
    @user_entry2 = user_entry2.downcase()
  end
  
  def entry_length? 
    if @user_entry1.length() === @user_entry2.length()
      # is_anagram()
      true
    else
      puts "in order to be anagrams, two words must be the same length. Please enter two words of the same length and try again"
      false
    end
  end
  def is_word?(input)
    # binding.pry
    if (input.split('').include? "a") || (input.split('').includes? "e") || (input.split('').includes? "i") || (input.split('').includes? "o") || (input.split('').includes? "u") || (input.split('').includes? "y")
      true
    else
      false
    end
  end

  # def is_anagram?
  # end

end