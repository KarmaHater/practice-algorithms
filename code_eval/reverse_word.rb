def reverse_string(string)
  string.split(" ").reverse.join(" ")
end

p reverse_string("Hello World")
