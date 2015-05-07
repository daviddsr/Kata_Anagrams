require 'spec_helper'
require './lib/anagram.rb'

describe Anagrams::Extractor do
	it "with one word returns a string with that word" do
		expect(Anagrams::Extractor.new.extract('rat')).to eq('rat')
	end

	it "with 2 words with different letters returns a string with each word in a different line" do
		expect(Anagrams::Extractor.new.extract("car\nbike")).to eq("car\nbike")
	end

	# ...

	it "groups anagrams in lines" do
		expect(Anagrams::Extractor.new.extract("rat\nnot\ntar")).to eq("rat tar\nnot")
	end
end

describe "Anagrams finding" do
	it "groups anagrams from file into a new file" do
		File.write('/tmp/wordlist.txt', "rat\nnot\ntar")

		path_to_file_with_anagrams = Anagrams.for_file('/tmp/wordlist.txt')

		expect(File.read(path_to_file_with_anagrams)).to eq("rat tar\nnot")
	end
end