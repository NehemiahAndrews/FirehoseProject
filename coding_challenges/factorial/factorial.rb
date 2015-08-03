def fac (n)
  if n == 0 
    1
  elsif n == 1
    1
  else
    n * fac(n-1)
  end
end

def fib (n)
  if n == 0
    0
  elsif n == 1
    1
  else    
    fib(n-1) + fib(n-2)
  end
end

def fib_i (n)
  fib_old = 0
  fib_new = 1
  n.times do 
    temp_new = fib_new
    fib_new += fib_old
    fib_old = temp_new
  end

  fib_old

end

