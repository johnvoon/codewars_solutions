class Abbreviator
  def self.abbreviate(string)
    string.gsub /(\w)(\w+{2})(\w)/ do |word|
      "#{$1}#{word.length - 3}#{$3}"
    end
  end
end

# SELECT PART TO BE SUBSTITUTED
# first /\w/ - ONE word character at beginning of string (includes a-z, A-Z, and 0-9)
# /\w+{2}/ - at least two word characters (given that word must be at least 4 characters long)
# second /\w/ - ONE word character at the end of the string

# FORMULATE SUBSTITUTE
# {$1} - in block form, match passed in to word parameter and first (\w) stored as "$1" variable 
# {word.length - 2} - returns purely a number; we just need to know how many letters is in the middle, which is string.length - 2
# {$3} - second (\w) stored as "$3" variable 
