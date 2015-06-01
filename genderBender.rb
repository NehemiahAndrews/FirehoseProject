# temperature.rb written by Nehemiah Andrews
# This program was written in response to the 
# Lesson 22 Challenge Problem from theFirehoseProject

require_relative 'banner'

#prompt user for input; use print to keep prompt and input on a single line.
print "What is your gender (Male or Female)? "

#get input from user - chomp to clear carriage return and maintain control of spacing, downcase to limit possible entries
gender = gets.chomp.capitalize

#method that expects string argument 
#returns statement based on provided string
def gender_check(str)
  if str == "Male"
    return "Hello, Sir!"
  elsif str == "Female"
    return "Hello, Ma'am!"
  else 
    return "Hello there"
  end
end

#display gender appropriate greeting
puts "#{gender_check(gender)}"