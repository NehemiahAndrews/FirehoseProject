# schrodinger.rb written by Nehemiah Andrews
# This program was written in response to the 
# Mentor Session #1 Homework from theFirehoseProject's Seth Brown

puts "#############################"
puts "# Coded by Nehemiah Andrews #"
puts "### I am a coding machine ###"
puts "#############################"

pets = []

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

pets.each do |f|
  puts "Behold, what began as a #{f}"
  f.gsub! 'Cat', ''
  puts "is now a #{f}"  
end

puts "\nAnd to prove that they have truly changed, and this isn't just an illusion:\n"

pets.each do |f|
  puts "#{f}"  
end
