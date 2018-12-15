USERNAME = "Min"
PASSWORD = "p@$$w0rd"
loop do
  puts ">> Please enter user name: "
  username = gets.chomp
  puts ">> Please enter your password: "
  password = gets.chomp
  break if username == USERNAME
  break if password == PASSWORD
  puts ">> Authorization failed!"
end
puts "Welcome!"