require ('rspec')
require ('pry')

class Anagrams
  attr_reader(:user_entry1, :user_entry2)
  attr_writer(:is_antigram)

  def initialize (user_entry1, user_entry2)
    @user_entry1 = user_entry1.downcase()
    @user_entry2 = user_entry2.downcase()
  end
  
  def entry_length? 
    if @user_entry1.length() === @user_entry2.length()
      # is_anagram()
      true
    else
      false
    end
  end
  def is_word?(input)
    # binding.pry
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
    i=0
    @is_antigram = false
    binding.pry
    until (i = entry1_array.length() - 1)
      if entry1_array[i] === entry2_array[i]
        @is_antigram = false
      else
        i += 1
        @is_antigram = true
      end
    end
    @is_antigram
  end

end