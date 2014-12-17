require 'pry'

def check_unique(string)
  letter_hash = Hash.new(0)
  string = string.downcase.gsub(" ", "")
  string.split("").each do |letter|
    letter_hash[letter] +=1
  end

 letter_hash.each do |k,v |
    if v > 1
      return true
    else
      return false
    end
  end
end

# eiko

def check_unique(string)
  letter_hash = Hash.new(0)
  string = string.downcase.gsub(" ", "")
  string.split("").each do |letter|
    letter_hash[letter] +=1
      if letter_hash[letter] > 1
        return true
      end
  end
  false
end


string = "This is my string"
string1 = "this"
p check_unique(string)
p check_unique(string1)



