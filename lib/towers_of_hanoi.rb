require 'byebug'
class TowersOfHanoi

    attr_accessor :piles

    def initialize
        @piles = Array.new(3) { Array.new([]) }
        
    end

    def make_tower
        piles[0] = [4, 3, 2, 1]
        true
    end

    def move

        until self.won?
            p piles
            puts "which pile will you take from?"
            response = gets.chomp.to_i
            disk = piles[response - 1].pop
            p piles
            puts "In which pile will you place the disk?"
            answer = gets.chomp.to_i
            piles[answer - 1].push(disk)
        end
        true
    end

    def won?
        if piles[2] == [4, 3, 2, 1] && piles[0].empty? && piles[1].empty?
            return true
        end
        false
    end

end

a = TowersOfHanoi.new
a.make_tower
a.move
