def permutation(string_1, string_2)
  string_1 = string_1.downcase.gsub(" ", "")
  string_2 = string_2.downcase.gsub(" ", "")
  letter_hash_string_1 = Hash.new(0)
  letter_hash_string_2 = Hash.new(0)

  string_1.split("").each do |letter|
    letter_hash_string_1[letter] +=1
  end

  string_2.split("").each do |letter|
    letter_hash_string_2[letter] +=1
  end

  if letter_hash_string_1 == letter_hash_string_2
    return true
  else
    return false
  end
end

string_1 = "See what is up"
string_2 = "see what is up"
string_3 = "Happy monkey day"

p permutation(string_1, string_2)
p permutation(string_1, string_3)