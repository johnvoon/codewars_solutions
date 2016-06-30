def title_case(title, minor_words = '')
  title.capitalize.split.map do |word|
    minor_words.downcase.split.include?(word) ? word : word.capitalize
  end.join(' ')
end