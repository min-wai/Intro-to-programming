arr = ["snow", "winter", "ice", "slippery", "salted roads", "white trees"]

p arr.delete_if { |string| string.start_with?("s") }

p arr.delete_if { |string| string.start_with?("s", "w")}