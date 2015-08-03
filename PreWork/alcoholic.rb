# alcoholic.rb written by Nehemiah Andrews
# This program was written in response to the 
# {Lesson 26 Coding Exercise} from theFirehoseProject

require_relative 'banner'

print "How old are you? "  
age = gets.chomp.to_i

if age < 21
  puts "You are not legally allowed to by alcohol in the US."
else
  puts "You are legally allowed to buy alcohol in the US."
end