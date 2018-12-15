def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

def ask_number(str)
  loop do
    puts "Please enter the #{str}: "
    input = gets.chomp
    break input.to_i if valid_number?(input)

    puts '>> Invalid input. Only integers are allowed.'
  end
end

numerator = ask_number('numerator')
denominator = ask_number('denominator')

if denominator.zero?
  puts '>> Invalid input. A denominator of 0 is not allowed.'
else
  puts "#{numerator} / #{denominator} is #{numerator / denominator}"
end
