def break_chocolate(n, m)
  if n > 0 && m > 0
    n * m - 1
  else 0
  end rescue 0
end

def break_chocolate(n, m)
  n == 0 || m == 0 ? 0 : n * m - 1
end