require 'spec_helper'
require './lib/anagram.rb'

describe "Anagrams" do 
  describe "#get_anagrams" do
    it "open a file with no words returns a empty file" do
      File.open("wordlist.txt", 'w+') { |file| file.puts "" }
      expect(get_anagrams("wordlist.txt")).to eq("\n")
    end
    it "open a file with one word returns a file with that word" do
      File.open("wordlist.txt", 'w+') { |file| file.puts "car" }
      expect(get_anagrams("wordlist.txt")).to eq("car\n")
    end
    it "open a file with 2 words with different letters returns a file with each word in a different line" do
      File.open("wordlist.txt", 'w+') { |file| file.puts "car\nbike" }
      expect(get_anagrams("wordlist.txt")).to eq("car\nbike\n")
    end
    it "open a file with 2 different words with same letters returns a file with both words in the same line" do
      File.open("wordlist.txt", 'w+') { |file| 
        ["car", "rac"].each do |line|
          file.puts line
        end
      }      
      expect(get_anagrams("wordlist.txt")).to eq("car\srac\n")
    end
  end
end
  


