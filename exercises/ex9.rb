h = {a: 1, b: 2, c: 3, d: 4}

puts h[:b]

h[:e] = 5

puts "Before removing: #{h}"

h.delete_if { |k, v| v < 3.5 }

puts "After removing: #{h}"