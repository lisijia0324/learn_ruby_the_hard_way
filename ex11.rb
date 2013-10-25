#Q1.-Q3. Asking questions of formular price 

print "Aptamail gold 3+ price:"
Aptamail_Gold_3_Price = gets.chomp()
print "How many tank you need: "
Tank_Number = gets.chomp()
print "Current rate of AUS/CHY: "
Currency = gets.chomp()
Aptamail_Gold_3_Price_AUD = Aptamail_Gold_3_Price.to_f * Tank_Number.to_f
Aptamail_Gold_3_Price_CHY = Aptamail_Gold_3_Price_AUD * Currency.to_f

puts "Aptamil gold 3+ price (AUD): $#{Aptamail_Gold_3_Price_AUD.round}"
#another way to print the price
#puts "Aptamil gold 3+ price (AUD): $ %5.2f" %Aptamail_Gold_3_Price_AUD
puts "Aptamil gold 3+ price (CHY): $#{Aptamail_Gold_3_Price_CHY.round}"

#gets and chomp methods
#gets() vs gets.chomp(): gets() returns a string and a '\n' character, while chomp removes this '\n'. (found in irb)