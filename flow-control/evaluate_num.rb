def evaluate_num(num)
  case
  when num <0
    "Your can't enter a negative number." 
  when num >= 0 && num <= 50
    "Your number is between 0 and 50."
  when num >= 51 && num <= 100
    "Your number is between 51 and 100."
  else
    "Your number is greater than 100."
  end
end

print "Give me a number: "
num = gets.chomp.to_i
puts evaluate_num(num)