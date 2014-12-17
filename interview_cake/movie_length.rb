# require 'pry'
# def movie_length(arr, flight_time)
#   movies_hash = {}
#   arr.each do |run_time|
#     rem = flight_time - run_time
#     return true if movies_hash[rem]
#     movies_hash[run_time] = 1
#     p movies_hash
#   end
#   false
# end

# flight_time = 120
# movie_times_1 = [20,30,40,40,60,80]
# movie_times_2 = [20,30,40]

# p movie_length(movie_times_1, flight_time)
# p movie_length(movie_times_2, flight_time)

require 'pry'

def movie_length(arr, flight_time)
  arr.each do |run_time|
    rem = flight_time - run_time
    return true if arr.include?(rem)
  end
  false
end

flight_time = 120
movie_times_1 = [20,30,40,40,60,80]
movie_times_2 = [20,30,40]

p movie_length(movie_times_1, flight_time)
p movie_length(movie_times_2, flight_time)
