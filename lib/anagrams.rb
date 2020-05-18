require ('rspec')
require ('pry')

class Anagrams
  attr_reader(:user_entry1, :user_entry2)
  attr_writer(:is_antigram)

  def initialize (user_entry1, user_entry2)
    @user_entry1 = user_entry1.downcase().gsub(/[^a-zA-Z]/, '')
    @user_entry2 = user_entry2.downcase().gsub(/[^a-zA-Z]/, '')
  end
  
  def entry_length? 
    if @user_entry1.length() === @user_entry2.length()
      true
    else
      false
    end
  end

  def is_word?(input)
    if (input.split('').include? "a") || (input.split('').include? "e") || (input.split('').include? "i") || (input.split('').include? "o") || (input.split('').include? "u") || (input.split('').include? "y")
      true
    else
      false
    end
  end

  def is_anagram?
    if entry_length?() && is_word?(@user_entry1) && is_word?(@user_entry2)
      if @user_entry1.chars().sort() === @user_entry2.chars().sort()
        true
      else 
        false
      end
    end
  end

  def is_antigram?
    entry1_array = @user_entry1.chars().sort()
    entry2_array = @user_entry2.chars().sort() 
    compare = entry1_array & entry2_array
    if compare.empty?
      @is_antigram = true
    else
      @is_antigram = false
    end
    @is_antigram
  end

end