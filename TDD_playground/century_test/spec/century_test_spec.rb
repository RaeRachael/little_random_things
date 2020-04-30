require_relative  '../century_test'

describe CenturyTest do
    it "take one argument" do
        expect{ CenturyTest.century(1) }.to_not raise_error
    end

    it "return ArgumentError, only integers; for non integer arguments" do
        expect{ CenturyTest.century("a") }.to raise_error(ArgumentError, "only integers")
        
        expect{ CenturyTest.century(nil) }.to raise_error(ArgumentError, "only integers")
        
        expect{ CenturyTest.century(false) }.to raise_error(ArgumentError, "only integers")
        
        expect{ CenturyTest.century(5.0) }.to raise_error(ArgumentError, "only integers")
    end
    
    [2, 56, 78, 99, 1].each do |year| 
    it "correct gives '1st' for years 1-99" do
            expect(CenturyTest.century(year)).to eq("1st")
        end
    end
    
    it "gives '1st'for year = 100" do
        expect(CenturyTest.century(100)).to eq("1st")
    end
    
    [102, 157, 200, 101].each do |year| 
    it "gives '2nd' for years 101-200" do
            expect(CenturyTest.century(year)).to eq("2nd")
        end
    end
    
    [202, 217, 300, 291].each do |year|
    it "gives '3rd' for years 201-300" do
            expect(CenturyTest.century(year)).to eq("3rd")
        end
    end
    
    it "gives '4th for years 301-400" do
        expect(CenturyTest.century(400)).to eq("4th")
        
        expect(CenturyTest.century(302)).to eq("4th")
    end
        
    it "gives 11th for years 1001-1100" do
        expect(CenturyTest.century(1100)).to eq("11th")
        
        expect(CenturyTest.century(1002)).to eq("11th")
    end
    
    it "gives '21st' for years 2001-2100" do
        expect(CenturyTest.century(2100)).to eq("21st")
        
        expect(CenturyTest.century(2009)).to eq("21st")
    end
end