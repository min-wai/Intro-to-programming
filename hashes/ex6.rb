words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

words.each_with_index do |word, index|
  anagrams = []
  for item in words.slice(index, words.length) do
    anagram = item.chars.select { |c| word.include?(c)}
    # p item.chars, anagram
    if anagram.length == word.length
      anagrams.push(item)
    end
  end
  if anagrams.length > 1
    p anagrams
  end
end