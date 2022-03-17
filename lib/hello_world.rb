

class Array

    def uniq
        result = []
        self.each { |ellie| result << ellie if !result.include?(ellie) }
        result
    end

    def two_sum
        final = []
        self.each_with_index do |ele1, idx1|
            self.each_with_index do |ele2, idx2|
               final << [idx1, idx2] if ele1 + ele2 == 0 && idx2 > idx1
            end
        end
        final
    end

    def my_transpose
        transposed = []
        if self.all? { |sub| sub.length == self[0].length }
            (0...self.length).each do |i|
                row = []
                (0...self.length).each do |j|
                    row << self[j][i]
                end
                transposed << row
            end
        else
            raise 'sub arrays are different lengths'
        end
        transposed
    end

    def stock_picker
        days = []
        count = 0
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                if (self[j] - self[i]) > count
                    days << [i, j]
                    count = self[j] - self[i]
                end
            end
        end
        days.pop
    end

end