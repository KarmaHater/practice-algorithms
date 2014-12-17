# Now I have an array of words that are mostly alphabetical, except they start somewhere in the middle of the alphabet, reach the end, and then start from the beginning of the alphabet. In other words, this is an alphabetically ordered array that has been "rotated."
# Write a function for finding the "rotation point," which is where I started working from the beginning of the dictionary. This array is huge (there are lots of words I don't know) so we want to be efficient here.
require "pry"
def rotation_point(words)
  first_word_index = 0
  last_word_index = words.count - 1

  while first_word_index < last_word_index
    guess = first_word_index + last_word_index / 2
    if words[guess] < first_word_index
      first_word_index = guess
    else
      last_word_index = guess
    end
    if first_index + 1 == last_word_index
      return last_word_index
    end
  end
end

array = ["fart", "kick", "apple", "big"]
p rotation_point(array)
array = ["fart","apple", "big"]
p rotation_point(array)