#\t tab
tabby_cat = "\tI'm tabbed in."
#\n split into different line,or start new line
persian_cat = "I'm split\non a line."
#\\ single backslash
backslash_cat = "I'm \\ a \\ cat."

fat_cat = <<MY_HEREDOC
I'll do a list:
\t* Cat food
\t* Fishies
\t* Catnip\n\t* Grass
MY_HEREDOC

puts tabby_cat
puts persian_cat
puts backslash_cat
puts fat_cat

#Q2
#\t leave a space as tab
puts "Hello\tworld"
#\b backspace means to delete one character
puts "Hello\b\b\bGoodbye world"
#\r the back word after\r replace the front word
puts "Hello\rStart over world"
