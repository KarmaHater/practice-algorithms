def is_sub_sting(string_1, string_2)
  string_1 = string_1.split("")
  string_2 = string_2.split("")
  found_match = false
  i = 0
  while i < string_1.length
    if string_1 != string_2
      string_2.rotate!(1)
      i +=1
    elsif string_1 == string_2
      return found_match = true
    end
  end
  found_match
end

string_1 = "happy"
string_2 = "appyh"
string_3 = "monkey"

p is_sub_sting(string_1, string_2)
p is_sub_sting(string_1, string_3)
