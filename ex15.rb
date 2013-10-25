
#set a varialbe named firlname, which have value of the first file in AFGV
filename = ARGV.first

#set variable name prompt,and give the value >
prompt = "> "
#set the variable txt and using open method to open the potuqular file, which is ex15_sample.txt
txt = File.open(filename)

#give the hit , which file will be print out
puts "Here's your file: #{filename}"
#read out the file we just open
puts txt.read()

=begin 
#give the instruction to open this file using another way
puts "I'll also ask you to type it again:"
#print out the hint mark
print prompt
#new file name will be get via manually typing infomrtion
file_again = STDIN.gets.chomp()

#new txt contain will be the file we just type in and be open via next commond line
txt_again = File.open(file_again)

#read out the new file
puts txt_again.read()
=end

#Q1. done
#Q2. http://ruby-doc.org/core-2.0/File.html
#Q3. function/method is technically same thing. it normally start with lowercase letter (as if we use uppercase, Ruby may think it as a constant). Following is the basic syntax
#def method_name(var1,var2)
#    expr...
#end
# constants, looks like a variable, except that its value is supposed to remain constant for the duration fo the probram. Ruby require uppercase for the constants.
#Q4.
puts "please put the file name you wanna open:"
print prompt
new_file = STDIN.gets.chomp()
puts "the file you wanna open is #{new_file}"
new_txt = File.open(new_file)
puts new_txt.read ()

#Q7.
#txt = File.open("ex15_sample.txt")
#puts txt.read()
#Q8.
#txt.close() to close ex15_sample.txt
#txt.closed?() to check whether we close the ex15_sample.txt