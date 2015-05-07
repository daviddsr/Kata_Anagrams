

def get_anagrams(file_name)
  file = File.open(file_name, 'r')
  content = file.read
  dictionary = Hash.new { |dictionary, key| dictionary[key] = [] }
  if content.length > 1
    array_words = content.split("\n")     
    array_words.each do |word|
      anagram = word.chars.sort.join
      dictionary[anagram] << word
    end
    File.open(file_name, 'w+') { |file| 
      dictionary.each do |anagram, value| 
        file.puts value.join " " 
      end
    }
    file_anagramed = File.open(file_name, 'r')
    content = file_anagramed.read
  end
  content
end