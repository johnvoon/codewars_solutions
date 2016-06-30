def validPhoneNumber(phoneNumber)
  !!phoneNumber[/\A\(\d{3}\)\s\d{3}-\d{4}\z/]
end

# must match (123) 456-7890
# \A - matches (
# \(\d{3}\) - matches 3 digit number
# \s - matches space
# \d{3}- - matches 3 digit number and hyphen
# \d{4} - matches 4 digit number
# \z - matches )