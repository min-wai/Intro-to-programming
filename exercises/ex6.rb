arr = [1,2,3,4,5,6,7,8,9,10]

arr << 11
arr.unshift(0)

arr.delete(11)
arr.push(3)

new_array = arr.uniq
p new_array