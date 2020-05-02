#Create a simple calculator that given a string of operators (), +, -, *, / and numbers separated by spaces returns the value of that expression

#Example: Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # => 7

#Remember about the order of operations! Multiplications and divisions have a higher priority and should be performed left-to-right. 
#Additions and subtractions have a lower priority and should also be performed left-to-right.


require_relative '../calculator'

describe Calculator do
    calc = Calculator.new
    
    describe "return a float number"do
    ["2","3","4","1","5","764","972394"].each do |num|
        it "should works for single number and no operator input" do
            expect(calc.evaluate(num)).to eq(num.to_i)
        end
    end
    end
    
    describe "can cope with one operator" do
    it "should use + operator correctly" do
        expect(calc.evaluate("1 + 3")).to eq(4)
    end
    
    it "should use - operator correctly" do
        expect(calc.evaluate("1 - 3")).to eq(-2)
    end
    
    it "should use * operator correctly" do
        expect(calc.evaluate("1 * 3")).to eq(3)
    end
    
    it "should use / operation correctly"do
        expect(calc.evaluate("5 / 2")).to eq(2.5)
    end
    end
    
    describe "can cope with two of the same operator" do
    it "should use +, + correctly" do
        expect(calc.evaluate("1 + 2 + 4")).to eq(7)
    end
    it "should use -, - correctly" do
        expect(calc.evaluate("9 - 7 - 1")).to eq(1)        
    end
    it "should use *, * correctly" do
        expect(calc.evaluate("2 * 3 * 2")).to eq(12)
    end
    it "should use /, / correctly" do
        expect(calc.evaluate("12 / 3 / 2")).to eq(2)
    end 
    end
    
    describe "follows * and / priority convention" do
    it "should do * operations before +" do
        expect(calc.evaluate("2 * 4 + 3")).to eq(11)
        
        expect(calc.evaluate("2 + 4 * 3")).to eq(14)
    end
    it "should do / operations before +" do
        expect(calc.evaluate("2 / 4 + 3")).to eq(3.5)
        
        expect(calc.evaluate("2 + 4 / 8")).to eq(2.5)
    end
    end
    describe "should cope with both * and / operators" do
        it "should return 4 for '4 * 3 / 3' input" do
            expect(calc.evaluate("4 * 3 / 3")).to eq(4)
        end
        it "should return 4 for '3 * 4 / 3' input" do
            expect(calc.evaluate("3 * 4 / 3")).to eq(4)
        end       
        it "should return 6 for '6 / 3 * 3' input" do
            expect(calc.evaluate("6 / 3 * 3")).to eq(6)
        end
    end 
    describe "should work with mix of all operators" do
        it "should return 16 for '3 * 8 - 16 / 2' input" do
            expect(calc.evaluate("3 * 8 - 16 / 4")).to eq(20)
        end
        it "should return -2 for '3 * 4 / 3 - 6 / 3 * 3' input" do
            expect(calc.evaluate("3 * 4 / 3 - 6 / 3 * 3")).to eq(-2)
        end
        it "should return 8 for '2 + 3 * 4 / 3 - 6 / 3 * 3 + 8' input" do
            expect(calc.evaluate("2 + 3 * 4 / 3 - 6 / 3 * 3 + 8")).to eq(8)
        end
    end
end