
class BabyHealthCheck
    def initialize(weight,height,head_length)
        @weight=weight
        @height=height
        @head_length=head_length
    end
    def printout
        puts "weight: #{@weight}kg"
        puts "height: #{@height}cm"
        puts "head length: #{@head_length}cm"
    end
    def difference(date1,date2)
       puts dif = date2 - date1
    end
end

day1 = BabyHealthCheck.new(3.31, 50, 34)
day19 = BabyHealthCheck.new(3.47, 50.5, 36.5)
day32 = BabyHealthCheck.new(3.93, 52, 38)

puts day1
day19.printout

difference(day32,day19)