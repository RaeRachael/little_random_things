require_relative '../divisor.rb'

describe '#divisor' do
    it "should return [2] for input 4" do
        expect(divisor(4)).to eq([2])
    end
    
    it "should return [2,3] for input 6"do
        expect(divisor(6)).to eq([2,3])
    end
    
    it "should return '2 is a prime' for input 2"do
        expect(divisor(2)).to eq("2 is a prime")
    end
end