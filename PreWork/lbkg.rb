# lbkg.rb written by Nehemiah Andrews
# This program was written in response to the 
# Lesson 21 Coding Exercise from theFirehoseProject

require_relative 'banner'

puts "Enter a weight in pounds to be converted to kilograms:"
lbs = gets.chomp.to_f

def kgConverter(l)
  return l * 0.45
end

puts "#{lbs} pounds is equal to #{kgConverter(lbs)} kilograms!"
