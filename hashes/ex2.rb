hash1 = {a: 1, b: 2}
hash2 = {b: 3, c: 4}

def decorate(*params)
  columns = []
  params.each do |array|
    array.each_with_index do |item, index|
      item = item.to_s
      if !columns[index]
        columns[index] = item.length
      elsif item.length > columns[index]
        columns[index] = item.length
      end
    end
  end

  line_divider = columns.inject(0) { |sum, n| sum + n} + columns.length * 4

  params.each do |array|
    puts "-" * line_divider
    array.each_with_index do |item, index|
      print "| #{item.to_s.ljust(columns[index])} |"
    end
    puts "\n" + ("-" * line_divider)
  end
  puts "\n\n"
end


decorate(["Before merge", hash1, hash2],
  ["During merge", hash1.merge(hash2)],
  ["After merge", hash1, hash2])

decorate(["Before merge!", hash1.to_s, hash2.to_s],
  ["During merge!", hash1.merge!(hash2)],
  ["After merge!", hash1, hash2])