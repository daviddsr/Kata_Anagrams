

module Anagrams
  class Extractor
    def extract(string)
      words = string.split("\n")
      anagrams = {}

      words.each do |word|
        word_hash = word.chars.sort.join
        anagrams[word_hash] ||= []
        anagrams[word_hash].push(word)
      end

      anagrams.values.map{ |anagram_words| anagram_words.join(' ') }.join("\n")
    end
  end

  def self.for_file(path)
    input = File.read(path)

    output = Extractor.new.extract(input)

    output_file_path = "#{path}.anagrams"
    File.write(output_file_path, output)

    output_file_path
  end
end