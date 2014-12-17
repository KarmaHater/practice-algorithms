def word_count(string)
  word_hash = Hash.new(0)
  string.downcase.gsub(/[^a-z0-9\s]/i, '').split(" ").map do |word|
    word_hash[word] += 1
  end
  word_hash
end


string = "I love monkey butt, it is the best. Come love moneky butt with me."
p word_count(string)

def assert(given, expected)
  given == expected
end

assert(word_count(string), {"i"=>1, "love"=>2, "monkey"=>1, "butt"=>2, "it"=>1, "is"=>1, "the"=>1, "best"=>1, "come"=>1, "moneky"=>1, "with"=>1, "me"=>1})
