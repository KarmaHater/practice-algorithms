def mulputples_of_a_number(larger_num, power_of_two)
  answer = 0
  until answer > larger_num
    answer = power_of_two * 2
  end
  puts answer
end

mulputples_of_a_number(13,8)
mulputples_of_a_number(17,16)
