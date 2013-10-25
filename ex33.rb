=begin
i = 0
numbers = []

while i < 6
  puts "At the top i is #{i}"
  numbers.push(i)

  i = i + 1
  puts "Numbers now: #{numbers}"
  puts "At the bottom i is #{i}"
end

puts "The numbers: "

for num in numbers
  puts num
end
=end

#Q1. -> Q2. -> Q3.
def while_loop(x,y)
  i = 0
  n = []
  while i < x.to_i and n.size < y.to_i
    puts "At the top i is #{i}"
    n.push(i)
    
    i += 1
    puts "Number now: #{n}"
    #puts "Number size is #{n.size}"
    #puts "At the bottom i is #{i}"
  end
end

print "Please put your x_number: "
x_number = gets.chomp
print "please put your y_number: "
y_number = gets.chomp
while_loop(x_number, y_number)

#Q4.
def for_loop(x,y)
  i = 0,n = []
  if n.size <= y.to_i
    for i in (0..x.to_i)
      puts "At the top i is #{i}"
      n.push(i)
      puts "Number now: #{n}"
      puts "Number size is #{n.size}"
    end
  else
    puts "NUmber size is bigger than y."
  end
end

print "Please put your x_num: "
x_num = gets.chomp
print "please put your y_num: "
y_num = gets.chomp
for_loop(x_num,y_num)
