def recursive_countdown(n)
  if n >= 0
    puts n
    recursive_countdown(n - 1)
  else
    puts n
  end
end

recursive_countdown(10)