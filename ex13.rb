#option 1
=begin
first,second,third = ARGV

puts "The script is called: #{$0}"
puts "Please put your first variable: "
puts "Your first variable is: #{gets.chomp()}"
puts "Pleas put your second variable: "
puts "Your second variable is: #{gets.chomp()}"
puts "Please put your third variable: "
puts "Your third variable is: #{gets.chomp()}"
=end

#option 2

=begin
ARGV.each do |a|
    puts "argument: #{a}"
end
=end

#option 3
=begin
puts "put the argument you want: "
puts "argument 1: "
ARGV[0] = gets.chomp()
puts "argument 2: "
ARGV[1] = STDIN.gets.chomp()
ARGV.each_with_index{|val, index| puts "argument #{index}: #{val}"}
=end

ARGV.each_with_index do |v,i|
    puts "argument no#{i}: #{v}"
end