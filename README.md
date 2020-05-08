# Anagrams and Antigrams

#### Epicodus: Ruby: Week One Independent Project: Anagrams and Antigrams


#### By Ryan Duff 

## Description
This is a demonstration of skills learned in week 1 of the Epicodus Ruby curriculum. The application allows a user to enter two words. It then compares the words to determine whether or not they are anagrams. If the two words are anagrams the user is told that their two entries are in fact anagrams of one another. If not, the user is informed that the entries are not anagrams. In the case that the two user entries are the same length but contain none of the same letters, the user is informed that their entries are antigrams. The application uses Ruby scripting to handle user logic and a single Ruby file to handle business logic. Testing is conducted using RSPEC. Debugging is conducted with Pry.


## Setup/Installation Requirements
Users will need to clone the project from a github repository at https://github.com/RyanDuff613/ruby_independent_project_1.git. Once cloned, open a Terminal window. On the command line navigate to the project folder and run $ bundle install, then $ chmod +x anagrams_script.rb to allow the terminal to run the script. 
Finally, run $ ./coin_combinations_script.rb to execute the application.


## Specifications

| Behavior       | Input         | Output  |
| ------------- |:-------------:| -----:|
| Program will prompt user to input two words | none  | "please enter two words of the same length and I'll tell you whether or not they are anagrams of one another |
| Program will store user entries and determine if they are the same length. If not, program will tell prompt user to enter two new words | "eat", "at" | "in order to be anagrams, two words must have the same length, please enter two new words"|
| Program runs a method to determine if user entries contain a vowel, if either entry does not contain a vowel program tells user they must enter real words | "eat", "ttt" | "in order to be anagrams of one another, two words must be actual words. Please enter two real words"|
|Program runs a method to determine whether or not they are anagrams|"eat", "ate"|'"eat" and "ate" are anagrams of one another'|
| If user entries have the same length and are not anagrams. program determines if they are instead antigrams | "eat", "boo" | "your two words are not anagrams. Actually, they're the opposite: antigrams |
| If user enters two multi-word phrases, the program determines whether or not they are anagrams of one another | "eat gab", "ate bag" | "the phrases you entered are anagrams of one another"|



## Technologies Used

* _Markdown_
* _git & gitHub_
* _Ruby_
* _Rspec_
* _Pry_

## Known Bugs



### License

**The MIT license**

Copyright (c) 2020 **Ryan Duff**
