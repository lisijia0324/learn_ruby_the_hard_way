user = ARGV[0]
testing = ARGV[1]
answer = ">"

puts "Hi #{user}, I'm the #{$0} script."
puts "I'd like to ask you a few questions."
puts "Do you like me #{user}?"
print answer
likes = STDIN.gets.chomp()

puts "Where do you live #{user}?"
print answer
lives = STDIN.gets.chomp()

puts "What kind of computer do you have?"
print answer
computer = STDIN.gets.chomp()

#Q3
puts "I gonna testing whether this is working or not:"
puts testing
puts ARGV

puts <<MESSAGE
Alright, so you said #{likes} about liking me.
You live in #{lives}.  Not sure where that is.
And you have a #{computer} computer.  Nice.
MESSAGE