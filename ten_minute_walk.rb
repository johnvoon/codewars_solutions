walk = %w(w)

def isValidWalk(walk)
  north_south = walk.map do |direction|
    case direction
    when 'n' then 1
    when 's' then -1
    end
  end

  east_west = walk.map do |direction|
    case direction
    when 'w' then -1
    when 'e' then 1
    end
  end

  if walk.length != 10
    false
  elsif (north_south.compact.reduce(:+) == 0 || north_south.compact.reduce(:+) == nil) && 
    (east_west.compact.reduce(:+) == 0 || east_west.compact.reduce(:+) == nil)
    true
  else false
  end
end

def isValidWalk(walk)
  walk.count('w') == walk.count('e') and
  walk.count('n') == walk.count('s') and
  walk.count == 10
end

p isValidWalk(walk)

