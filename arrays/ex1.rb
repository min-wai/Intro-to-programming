arr = [1,3,5,7,9,11]
number = 3

arr.each { |n| (n == 3 ? puts("Number #{number} is in the array.") : next) }