
# insert()—records a new temperature
# get_max()—returns the highest temp we've seen so far
# get_min()—returns the lowest temp we've seen so far
# get_mean()—returns the mean ↴ of all temps we've seen so far
# get_mode()—returns the mode ↴ of all temps we've seen so far

class TempTracker
  attr_reader :temps, :get_max, :get_mean
  def initialize
    @temps = []
    @get_max = 0
    @sum_temp = 0
    @count = 0
    @get_mean = 0
  end

  def insert(temp)
    #max
    if temp > @get_max
      @get_max = temp
    end
    #mean
    @sum_temp = @sum_temp + temp
    @count +=1
    @get_mean = @sum_temp.to_f / @count.to_f
    @temps << temp
  end

  def get_min
    @temps.sort!.first
  end

  def get_mode
    temp_count_hash = Hash.new(0)
    @temps.each do |num|
      temp_count_hash[num] +=1
    end
    temp_count_hash.max_by{|k,v| v }[0]
  end
end

my_tracker = TempTracker.new

my_tracker.insert(12)
my_tracker.insert(45)
my_tracker.insert(92)
my_tracker.insert(75)
my_tracker.insert(65)
my_tracker.insert(36)
my_tracker.insert(36)
p my_tracker.temps
p my_tracker.get_max
p my_tracker.get_min
p my_tracker.get_mean
p my_tracker.get_mode
