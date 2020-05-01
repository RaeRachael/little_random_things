#Create a simple calculator that given a string of operators (), +, -, *, / and numbers separated by spaces returns the value of that expression

#Example: Calculator.new.evaluate("2 / 2 + 3 * 4 - 6") # => 7

#Remember about the order of operations! Multiplications and divisions have a higher priority and should be performed left-to-right. 
#Additions and subtractions have a lower priority and should also be performed left-to-right.


require_relative '../calculator'

describe Calculator do
    calc = Calculator.new
    
    ["2","3","4","1","5","764","972394"].each do |num|
        it "should works for single number and no operator input" do
            expect(calc.evaluate(num)).to eq(num.to_i)
        end
    end
    
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
        expect(calc.evaluate("6 / 2")).to eq(3)
    end
end