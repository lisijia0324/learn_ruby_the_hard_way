states = {
  'Queensland' => 'QSL',
  'New South Wales' => 'NSW',
  'Victoria' => 'VIC',
  'Tasmania' => 'TAS',
  'South Australia' => 'SAU',
  'Western Australia' => 'WAU',
  'Northern Territory' => 'NAU'
}

cities = {
  'QSL' => 'Brisbane',
  'NSW' => 'Sydney',
  'VIC' => 'Melbourne',
  'TAS' => 'Hobart',
  'SAU' => 'Adelaide',
  'WAU' => 'Perth',
  'NAU' => 'Darwin'
}

def sepection 
  puts '-' * 10
end

# print out all the states of australia
sepection
for state, abbrev in states
  puts "%s is abbreviated %s " % [state, abbrev]
end

#print out all the main city in states
sepection
cities.each do |abbrev, city|
  puts "#{abbrev} has main city: #{city}"
end

