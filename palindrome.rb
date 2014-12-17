require "pry"
# Write an efficient function that checks whether any permutation ↴ of an input string is a palindrome ↴ .
# Examples:
# "civic" should return true
# "ivicc" should return true
# "civil" should return false
# "livci" should return false

def palindrome(word)

  word = word.split("")

  i = 0
  while i < word.count - 1

    front_letter = 0
    back_letter = word.count - 1
    correct_letters = 0

    while front_letter < word.count / 2
      if word[front_letter] == word[back_letter]
        front_letter+=1
        back_letter-=1
        correct_letters += 1
        return true if correct_letters == word.count / 2
      else
        return false
      end
    end
  end
end



p palindrome('civic') == true
p palindrome("ivicc") == true
p palindrome("civil") == false
p palindrome("livci") == false

