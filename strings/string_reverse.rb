# Write a function to reverse an array of characters in place.
# "In place" means "without creating a new string in memory."

def string_reverse(string)
  reversed = []
  array = string.split("")
  i = array.length
  while i > 0
    reversed << array.pop
    i-=1
  end
  reversed.join("")
end

def string_reverse(string)

  array = string.split("")

end

x = "hello"
p string_reverse(x)
p string_reverse("dog")
#god

