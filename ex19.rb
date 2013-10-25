=begin
#define function cheese_and_crackers with two args
def cheese_and_crackers(cheese_count, boxes_of_crackers)
    puts "You have #{cheese_count} cheeses!"
    puts "You have #{boxes_of_crackers} boxes of crackers!"
    puts "Man that's enough for a party!"
    puts "Get a blanket."
    puts # a blank line
end

#run function cheese_and_crackers by giving 2 value
puts "We can just give the function numbers directly:"
cheese_and_crackers(20, 30)

#call function cheese_and_crackers by using variables with values
puts "OR, we can use variables from our script:"
amount_of_cheese = 10
amount_of_crackers = 50
cheese_and_crackers(amount_of_cheese, amount_of_crackers)

#run function cheese_and_crackers by giving value with math calculation
puts "We can even do math inside too:"
cheese_and_crackers(10 + 20, 5 + 6)

#call function cheese_and_crackers via combined variables and math calculation
puts "And we can combine the two, variables and math:"
cheese_and_crackers(amount_of_cheese + 100, amount_of_crackers + 1000)
=end
 
#my own disigned function
def discount_calculater(orginal_price, discount_rate)
    puts "The orginal_price is : #{orginal_price}"
    puts "The discount rate of this week is : #{discount_rate}"
end

#way1
puts "Way One"
discount_calculater(79.99,0.9)

#way2
puts "Way Two"
price = 79.99
sale_rate = 0.9
discount_calculater(price, sale_rate)

#way 3
puts "Way Three"
discount_calculater(99.99-29, 0.95)

#way 4
puts "Way Four"
old_price = 99.99
saved_price = 20
new_price = old_price - saved_price
discount_calculater(new_price,new_price/old_price)

#way 5
puts "Way Five"
this_week_special = (new_price/old_price).round(2)
discount_calculater(new_price, this_week_special)

#Way 6
puts "Way Six"
discount_calculater(new_price,this_week_special)
puts "This week special price is #{new_price}, which has #{this_week_special} discount"






