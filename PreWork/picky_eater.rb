# picky_eater.rb written by Nehemiah Andrews
# This program was written in response to the 
# {Lesson 31 Coding Example} from theFirehoseProject

require_relative 'banner'

def kid_eat(food)
  vegetables = ["Lettuce","Brocolli","Carrot","Onion"]
  fruits = ["Apple","Orange","Mango","Pineapple"]
 
  if vegetables.include?(food)
    4.times do
      puts "Gross, I hate #{food}!"
    end
  elsif fruits.include?(food)
    puts "How about we make a smoothie with #{food}"
  else
    puts "Om nom nom... I love #{food}"
  end
  
end

foods = ["Candy","Soda","Lettuce","McDonald's","KFC","Mango","Carrot"]

foods.each do |food|
  kid_eat(food)
end

print "Enter a food to feed me: "
user_food = gets.chomp.capitalize
kid_eat(user_food)