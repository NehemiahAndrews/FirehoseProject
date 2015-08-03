# schrodinger.rb written by Nehemiah Andrews
# This program was written in response to the 
# Mentor Session #1 Homework from theFirehoseProject's Seth Brown

puts "#############################"
puts "# Coded by Nehemiah Andrews #"
puts "### I am a coding machine ###"
puts "#############################"

# Create Array
pets = []

# Populate array with data
pets << "Cat"
pets << "Dog"
pets << "Calico Cat"
pets << "Grumpy Cat"
pets << "Fat Cat"
pets << "Cat's Meow"
pets << "Cat in the Hat"
pets << "Dog eat dog"
pets << "Dog day summer"
pets << "Kitty Cat"
pets << "Kit Kat"

# Enumerate through array items, posting original values, removing the word "Cat", and showing the change
pets.each do |f|
  puts "Behold, what began as a #{f}"
  f.gsub! 'Cat', ''
  puts "is now a #{f}"  
end

# Exiting looped to demonstrate that local variable has been destroyed
puts "\nAnd to prove that they have truly changed, and this isn't just an illusion:\n"

# Looping through array contents again with new local variable to demonstrate that change is global
pets.each do |p|
  puts "#{p}"  
end
