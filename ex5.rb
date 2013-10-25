name = 'Zed A. Shaw'
age = 35 # not a lie
height = 74 # inches
weight = 180 # lbs
eyes = 'Blue'
teeth = 'White'
hair = 'Brown'

#new variables
wage_before_tax = 606
tax_rate = 0.75
wage_after_tax = wage_before_tax * tax_rate


puts "Let's talk about %s." % name
puts "He's %d inches tall." % height
puts "He's %d pounds heavy." % weight
puts "Actually that's not too heavy."
puts "He's got %s eyes and %s hair." % [eyes, hair]
puts "His teeth are usually %s depending on the coffee." % teeth

# this line is tricky, try to get it exactly right
puts "If I add %d, %d, and %d I get %d." % [
age, height, weight, age + height + weight]

#new cacular and fomart
puts "His wage is %5.2f, and his wage after tax payment is %5.2f" % [wage_before_tax, wage_after_tax]

#Q1. remove all the my_
#Q2. add more varialbe and values, give different fomart. wage_before_tax=606, wage_after_tax, tax_rate=o.75
#Q4. convert inches and pounds to centimeters and kilos

#gem install sy
#require 'sy/imperial'
#1.inches.in :centimeters
#1.lbs.in :kilos
# DOESN'T WORK

#gem install units
# DOESN'T WORK

def lbs_to_kilos lbs
    lbs * 0.45359237
end
weight_kilos = lbs_to_kilos(weight)

def inches_to_meter inches
    inches * 2.54/100
end
height_m = inches_to_meter(height)


puts "He's %5.2f kilos heavy." %weight_kilos
puts "He's %1.2f meter tall." %height_m
