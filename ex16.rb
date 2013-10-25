=begin 
filename = ARGV.first
script = $0

puts "We're going to erase #{filename}."
puts "If you don't want that, hit CTRL-C (^C)."
puts "If you do want that, hit RETURN."

print "? "
STDIN.gets

puts "Opening the file..."
target = File.open(filename, 'w')

puts "Truncating the file.  Goodbye!"
target.truncate(target.size)

puts "Now I'm going to ask you for three lines."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "I'm going to write these to the file."

target.write(line1)
target.write("\n")
target.write(line2)
target.write("\n")
target.write(line3)
target.write("\n")

puts "And finally, we close it."
target.close()

=end

#Q2.&Qs3.
filename = ARGV.first
puts "Opening the new file: #{filename}"

target = File.open(filename,'w')
target.truncate(target.size)

puts "Now I'm goning to put content of new file."

print "line 1: "; line1 = STDIN.gets.chomp()
print "line 2: "; line2 = STDIN.gets.chomp()
print "line 3: "; line3 = STDIN.gets.chomp()

puts "Process to put in these content."

#target.write(line1)
#target.write("\t")
#target.write(line2)
#target.write("\n")
#target.write(line3)

target.write(line1 + "\\" + line2 + "\n" + line3 + "\"")

target.close()

txt = File.open(filename)
puts txt.read()


#Q4
#File.open("filename","w"), "w" here is the mode taken as a argument, which means to WRITE only, truncates existing file to 0 lenght or creats a new file for writing. If we don't put ane option(associated block) after File.open, File.open is a synonym for File.new().
#Q5.
#If a file is open with 'w' mode, which means it can be writing for anything and any lengh of content. I still need target.truncate() to restrict the lengh of the integer bytes in that file.

