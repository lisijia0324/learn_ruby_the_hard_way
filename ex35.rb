def prompt()
  print "> "
end

#take a number from next_move, and put if into how_much if it contain 0/1, and than compare 
# => the number of how_much, to print out different result and exit the program.
def gold_room()
  puts "This room is full of gold.  How much do you take?"

  prompt; next_move = gets.chomp 
=begin
  if next_move.include? "0" or next_move.include? "1"
    how_much = next_move.to_i()
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    Process.exit(0)
  else
    dead("You greedy bastard!")
  end
=end  

#Q5.
    if is_i?(next_move) == true
      how_much = next_move.to_i()
      
      if how_much < 50
        puts "Nice, you're not greedy, you win!"
        Process.exit(0)
      else
        dead("You greedy bastard!")
      end
    else
      dead("Man, learn to type a number.")
    end
end

def is_i?(s)
  s.to_s.match(/\A[+]?\d+?(\.\d+)?\Z/) == nil ? false : true
end

#second method with while/do opetion, option1. input value match, then do dead function.
# => option2. input value match "taunt bear" and true with bear_moved, print the words. 
# => option3. input value match "taunt bear" and false with bear_moved, use dead function and print the words.
# => option4. input value match "open door" and false with bear_moved, use gold_room function.
# => last option. print the words. 
def bear_room()
  puts "There is a bear here."
  puts "The bear has a bunch of honey."
  puts "The fat bear is in front of another door."
  puts "How are you going to move the bear?"
  bear_moved = false

  while true
    prompt; next_move = gets.chomp

    if next_move == "take honey"
      dead("The bear looks at you then slaps your face off.")
    elsif next_move == "taunt bear" and not bear_moved
      puts "The bear has moved from the door. You can go through it now."
      bear_moved = true
    elsif next_move == "taunt bear" and bear_moved
      dead("The bear gets pissed off and chews your leg off.")
    elsif next_move == "open door" and bear_moved
      gold_room()
    else
      puts "I got no idea what that means."
    end
  end
end

#cthulhu_room function, if/elsif/else option, 
# => condition1. input match "flee", we do start method
# => condition2. input match "head", we do dead method with certain input
# => condition3. input not match "flee" or "head", redo the cthulhu_room function agaion.
def cthulhu_room()
  puts "Here you see the great evil Cthulhu."
  puts "He, it, whatever stares at you and you go insane."
  puts "Do you flee for your life or eat your head?"

  prompt; next_move = gets.chomp

  if next_move.include? "flee"
    start()
  elsif next_move.include? "head"
    dead("Well that was tasty!")
  else
    cthulhu_room()
  end
end

#method dead() with one parma, which are nomally input words, and exit the program
def dead(why)
  puts "#{why}  Good job!"
  Process.exit(0)
end

#method start() with if/elsif/else condition, which let you to choice from left/right side. 
# => condition "left", we will redo bear_room() method.
# => condition "right", we will redo cthulhu_room() method.
# => except "left"/"right"condition, we'll do dead() method with certain input words.
def start()
  puts "You are in a dark room."
  puts "There is a door to your right, left and middle."
  puts "Which one do you take?"

  prompt; next_move = gets.chomp

  if next_move == "left"
    bear_room()
  elsif next_move == "right"
    cthulhu_room()
#Q4.
  elsif next_move == "middle"
    shopping_cart()
  else
    dead("You stumble around the room until you starve.")
  end
end

#Q4. new method shoping_chart()
def shopping_cart()
  puts "Your beautful wife just update her shopping cart, and you have three options to do:"
  puts "ignore shopping cart"
  puts "pay shopping cart"
  puts "delete her account"
  
  prompt; next_move = gets.chomp
  
  if next_move == "ignore shopping cart"
    cthulhu_room()
  elsif next_move == "pay shopping cart"
    gold_room()
  elsif next_move == "delete her account"
    dead("Sorry, mate, wrong answer, you are so dead.")
  else
    puts "Sorry, mate, you have to make a choice."
    shopping_cart()
  end
end

start()
