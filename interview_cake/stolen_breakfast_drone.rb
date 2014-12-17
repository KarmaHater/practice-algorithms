# Your company delivers breakfast via autonomous quadcopter drones. And something mysterious has happened.
# Each breakfast delivery is assigned a unique ID, a positive integer. When one of the company's 100 drones takes off with a delivery, the delivery's ID is added to an array, delivery_id_confirmations. When the drone comes back and lands, the ID is again added to the same array.
# After breakfast this morning there were only 99 drones on the tarmac. One of the drones never made it back from a delivery. We suspect a secret agent from Amazon placed an order and stole one of our patented drones. To track them down, we need to find their delivery ID.
# Given the array of IDs, which contains many duplicate integers and one unique integer, find the unique integer.
# The IDs are not guaranteed to be sorted or sequential. Orders aren't always fulfilled in the order they were received, and some deliveries get cancelled before takeoff.

def missing_drone(array)
  drone_count = Hash.new(0)

  array.each do |num|
    drone_count[num]+=1
  end

  drone_count.each do  |k,v|
   return k if v == 1
  end
end
a = [2,3,3,4,4,5,6,6,5,2,9]
p missing_drone(a)