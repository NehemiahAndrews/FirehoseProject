# mathCE.rb written by Nehemiah Andrews
# This program was written in response to the 
# Lesson 19 Coding Exercise from theFirehoseProject

require_relative 'banner'

puts "Enter a length in inches:"
length_in = gets.chomp.to_i

length_cm = length_in * 2.54

puts "#{length_in} inches is equal to #{length_cm} centimeters."