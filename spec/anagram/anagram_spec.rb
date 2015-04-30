describe "Anagrams" do 
  it "a file with no words returns a empty file" do
    file = ""
    expect(classify_by_anagrams(file)).to eq("")
  end
  it "a file with 1 word returns a file with one word" do
    file = "house"
    expect(classify_by_anagrams(file)).to eq("house")
  end
  it "a file with 2 words with same letters but in different order it returns a file with those 2 words in the same line" do
    file = "dog\ngod"
    expect(classify_by_anagrams(file)).to eq("dog god")
  end
end

def classify_by_anagrams(file)
  array_file = file.split("\n")
  new_file = array_file.join("\s")
  new_file
end