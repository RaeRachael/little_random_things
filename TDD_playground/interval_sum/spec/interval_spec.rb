require_relative '../interval.rb'

describe "#sumIntervals" do
    
    describe "acceptable arguments" do   
        
        it "accepts array of pairs of integers (in array form)" do
            expect{ sumInterval([[1,2]]) }.to_not raise_error
        end
    
        ["a" , 1, {2 => 3}, nil, true].each do |not_arrays| 
            it "only accepts arrays" do
                expect { sumInterval(not_arrays) }.to raise_error(ArgumentError, "only Arrays")
            end
        end   
    end
    
    describe "output correct for one interval" do    
        it "returns 1 for [[0,1]]" do
            expect(sumInterval([[0,1]])).to eq(1)
        end
        
        it "returns 2 for [[0,2]]"do 
            expect(sumInterval([[0,2]])).to eq(2)
        end        
    end
    
    describe "output correct for multiple non-overlapping intervals" do
        it "returns 2 for [[0,1],[1,2]]" do
            expect(sumInterval([[0,1],[1,2]])).to eq(2)
        end
        
        it "returns 5 for [[1,2],[293,297]]" do
            expect(sumInterval([[1,2],[293,297]])).to eq(5)
        end
    end
    
    describe "output correct for 1 interval inside another interval" do
        it "returns 4 for [[0,4],[1,2]]" do
            expect(sumInterval([[0,4],[1,2]])).to eq(4)
        end
        
        it "returns 46 for [[0,46],[11,23]]" do
            expect(sumInterval([[0,46],[11,23]])).to eq(46)
        end
    end
    
    describe "output correct for pair of overlapping intervals" do
        it "returns 4 for [[0,2],[1,4]]" do
            expect(sumInterval([[0,2],[1,4]])).to eq(4)
        end
        
        it "returns 4 for [[1,4],[0,3]]" do
            expect(sumInterval([[1,4],[0,3]])).to eq(4)
        end
    end
    
    describe "works for mixed cases - 3+ of interval pais" do
        it "returns 9 for [[0,6],[3,7],[10,12]]" do
            expect(sumInterval([[0,6],[3,7],[10,12]])).to eq(9)
        end
        
        it "returns 40 for [[0,28],[4,6],[24,40]]" do
            expect(sumInterval([[0,28],[4,6],[24,40]])).to eq(40)
        end
        
        it "returns 784 for [[-25, 481], [-390, -357], [310, 482], [203, 385], [-269, 427]]" do
            expect(sumInterval([[-25, 481], [-390, -357], [310, 482], [203, 385], [-269, 427]])).to eq(784)
        end
    end
end