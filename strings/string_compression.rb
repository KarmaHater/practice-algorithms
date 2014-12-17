def string_compression(string)
  answer = []
  letter_hash = Hash.new(0)
    string.split("").each do |letter|
      letter_hash[letter] +=1
    end
  letter_hash.each do |k,v|
    answer << "#{k}#{v}"
  end
  puts answer.join("")
end
 string= "happpyyyyhhh"

string_compression(string)