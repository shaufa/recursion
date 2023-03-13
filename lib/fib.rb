def fib_iteration(n)
  result = []
  n.times do |i|
    if i.zero?
      result << 0 
    elsif i == 1
      result << 1
    else
      result << result[i-1] + result[i-2]
    end
  end
  result
end

def fib_recursive(n, result = [])
  if n == 1
    0 
  elsif n == 2
    1 
  else
    i = fib_recursive(n-1) + fib_recursive(n-2)
    result << i
    i
  end
end

arr = []

fib_recursive(7, arr)
p arr

# 0, 1, 1, 2, 3, 5, 8, 13
