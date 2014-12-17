# Write a recursive function for generating all permutations of an input string. Return them as an array.
# Don't worry about duplicates—assume every character is unique.
# Don't worry about time or space complexity—if we wanted efficiency we'd write an iterative version.
# Your function can have loops—it just needs to also be recursive.

def x(word, length=0, collection=[])
  length += 1
  word_array = word.split("")
  word_array.rotate!
  word = word_array.join("")
  collection << word
  if length < word_array.count
    x(word, length, collection)
  else
    return collection
  end
end

p x("mop")
p x("shop")