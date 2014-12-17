def find_writer(stuff)
  author = []
  letters = stuff.split("|").first.split("")
  numbers = stuff.split("|").last.split(" ").map(&:to_i)

  numbers.each do |num|
    author << letters[num-1]
  end

  p author.join("")
end

find_writer("osSE5Gu0Vi8WRq93UvkYZCjaOKeNJfTyH6tzDQbxFm4M1ndXIPh27wBA rLclpg| 3 35 27 62 51 27 46 57 26 10 46 63 57 45 15 43 53")