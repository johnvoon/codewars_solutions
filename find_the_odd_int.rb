def find_it(seq)
  seq.uniq.find { |int| int if seq.count(int).odd? }
end

def find_it(seq)
  seq.reduce(:^)
end

p find_it([20, 1, 1, 1, 2, 3, 3])