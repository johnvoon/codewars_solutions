def solution(number)
  (number - 1).times.map { |n| n + 1 }.map { |f| f % 3 == 0 || f % 5 == 0 ? f : nil}.compact.reduce(:+)
end

def solution(number)
  (1...number).select {|n| n%3==0 || n%5==0}.inject(:+)
end

p solution(13)