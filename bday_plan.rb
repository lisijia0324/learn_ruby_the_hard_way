$possible_expense = Array.new
$personal_suggestion = Array.new

def prompt()
  print ">"
end

def expected_cost()
  puts "Please put your expected cost: "
end

def start()
  puts "Yuan's Bday plan, Please choice the step your are doing: "
  puts "If you wanna exit, please choice EXIT, thanks."
  puts "Step 1. Gift Options"
  puts "Step 2. Dinner Plans"
  puts "step 3. Cake Orders"
  
  prompt; step_choice = gets.chomp
  
  case step_choice.to_i
  when 1
    gift_options()
    dinner_plans()
#    cake_orders()
  when 2 
    dinner_plans()
#    cake_orders()
  when 3
    cake_orders()
  when "Exit"
    puts "Thank you for your time."
    Process.exit(0)
  else 
    puts "Please make right choice, thank you."
    start()
  end
  
#  expense()
end

def gift_options()
  puts "Please choice gift form 2 options: "
  puts "Option1. Burberry Wallet + Beat headphones"
  puts "Option2. Tiffany Ring with 5th anniversary mark brand"
  
  prompt; option = gets.chomp
  
  if option.include? "1"
    expected_cost;
    prompt; possible_expense = gets.chomp
  elsif option.include? "2"
    expected_cost;
    prompt; possible_expense = gets.chomp
  else
    puts "Please put your suggetion:"
    personal_suggestion = gets.chomp
  end
  puts possible_expense
end

def dinner_plans()
  puts "Please choice dinner plan from 2 options: "
  puts "Option1. Booking a restaurant for whole family"
  puts "Option2. Lisa's mon cook fancy home meal"

  prompt; option = gets.chomp
  
  if option.include? "1"
    expected_cost()
    prompt; $possible_expense = gets.chomp
  elsif option.include? "2"
    expected_cost()
    prompt; possible_expense = gets.chomp
  else
    puts "Please put your suggetion:"
    personal_suggestion = gets.chomp
  end
  puts possible_expense
end

=begin
def cake_orders()
  
end

def expense()
  
end
=end

start()