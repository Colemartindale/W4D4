require 'hello_world'
require 'rspec'

describe 'Array' do 

    describe '#uniq' do
        it "return unique elements of an array in order" do
            expect([1, 2, 1, 3, 3].uniq).to eq([1, 2, 3])
        end
        it 'should return an empty array if given an empty array' do 
            expect([].uniq).to eq([])
        end
    end

    describe '#two_sum' do
        it "finds all pairs of positions in the array that sum to 0" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end
    end

    describe '#my_transpose' do
        it 'turns rows of a matrix into columns' do
            expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
        end
        it "should raise an error if rows are different lengths" do
            expect{[[0, 1, 2], [3, 4, 5], [6, 7]].my_transpose}.to raise_error('sub arrays are different lengths')
        end
    end

    describe '#stock_picker' do 
        it "should return the indices of elements which have the greatest difference" do 
            expect([12, 6, 1, 10, 15, 9].stock_picker).to eq([2, 4])
        end
        it 'should only subtract the element with the lesser index from the element with the greater index' do      
            expect([12, 15, 20].stock_picker).to eq([0, 2])
        end
    end

end

