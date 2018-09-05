contact_data = [["Joe Smith", "joe@email.com", "123 Main St.", "555-123-4567"],
["Sally Johnson", "sally@email.com", "404 not found Dr.", "123-234-3456"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contact_data.each do |arr|
  person = contacts[arr.shift]
  [:email, :address, :phone].each_with_index { |key, index| person[key] = arr.shift }
end

puts contacts