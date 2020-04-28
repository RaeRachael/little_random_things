require 'anagram_check'
describe String do
    it "should return false if argument is '' " do
        expect("test".anagram_check('')).to eq (false)
    end
    
    it "should raise #<RuntimeError: Needs to be a String>' if argument is not a String" do
        expect{ "test".anagram_check(1) }.to raise_error(RuntimeError, "Needs to be a String")
    end
    
   ["2", "0", "abc", "dfg"].each do |object|
    it "doesn't raise an error when it receives #{object}" do
        expect{ "test".anagram_check(object) }.to_not raise_error
    end
  end
  
  ["2", "0", "abc", "dfg"].each do |object|
    it "should return true if argument == self, eg #{object}" do
        expect(object.anagram_check(object)).to eq (true)
    end
  end
  
    it "should return true for anagrams" do
        expect("abcd".anagram_check("bcda")).to eq (true)
        
        expect("gfhd".anagram_check("fghd")).to eq (true)
        
        expect("kljhg".anagram_check("kghlj")).to eq (true)
    end
    
    it "should return false for non-angrams" do
        expect("gdsef".anagram_check("qwsdw")).to eq (false)
        
        expect("fsdsea".anagram_check("refsasw")).to eq (false)
    end
    
    it "should be case insensitive" do
        expect("ABcD".anagram_check("aCdb")).to eq (true)
    end
    
    it "should not take white-space or punctuation into account" do
        expect("ab ds fn".anagram_check("fndsab")).to eq (true)
        
        expect("abc-d".anagram_check("dabC")).to eq (true)
        
        expect(",s.adewq?".anagram_check("qwes,.,.ad")).to eq (true)
    end  
end
