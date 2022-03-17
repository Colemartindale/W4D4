require 'towers_of_hanoi'
require 'rspec'

describe "TowersOfHanoi" do
    let(:towers_of_hanoi) { TowersOfHanoi.new }

    describe "#initialize" do
        it 'should set piles to three unique arrays' do
            piles = towers_of_hanoi.instance_variable_get(:@piles)
            stacks = Array.new(3) { Array.new([]) }
            expect(piles).to eq(stacks)
        end

       


    end

    describe "#piles" do
        it "should get (return) @piles" do
        expect(towers_of_hanoi.piles).to be(towers_of_hanoi.instance_variable_get(:@piles))
        end
    end

    describe '#make_tower' do
        it 'should fill the first sub array in piles with numbers 1..4' do
            piles = towers_of_hanoi.instance_variable_get(:@piles)
            allow(towers_of_hanoi.piles).to receive(:piles[0]).and_return([4, 3, 2, 1])
            expect(towers_of_hanoi.make_tower).to eq(true)
        end
    end

    describe '#won?' do
        it 'should return true if each disk has been moved to the last array in @piles' do
            piles = towers_of_hanoi.instance_variable_get(:@piles)
            allow(towers_of_hanoi.piles).to receive(:piles[2]).and_return([4, 3, 2, 1])
            expect(towers_of_hanoi.won?).to eq(true)
        end
    end

    describe '#move' do 
        it 'should raise an error if user tries to take from an empty pile' do
            piles = towers_of_hanoi.instance_variable_get(:@piles)
            expect { }
        end
    end
  

end