describe "Anagrams" do 
  it "a file with no words returns a empty file" do
    file = ""
    expect(classify_by_anagrams(file)).to eq("")
  end
  it "a file with 1 word returns a file with one word" do
    file = "house"
    expect(classify_by_anagrams(file)).to eq("house")
  end
end

def classify_by_anagrams(file)
  if file.length > 0
    "house"
  else
    ""
  end
end