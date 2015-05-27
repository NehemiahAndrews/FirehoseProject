# temperature.rb written by Nehemiah Andrews
# This program was written in response to the 
# Lesson 22 Challenge Problem from theFirehoseProject

#prompt user for input; use print to keep prompt and input on a single line.
print "Enter the temperature in degrees in Celsius: "

#get input from user - chomp to clear carriage return and maintain control of spacing
temp_c = gets.chomp.to_f

#method that expects float type argument in degress Celsius
#returns temperature in degrees farenheit as float
def convertToFarenheit(c)
  return c * 9 / 5 + 32
end

#display results of conversion, adding newline.
#could eliminate chomp above and achieve desired result, but prefer explicit line control.
puts "\nThe temperature is #{convertToFarenheit(temp_c)} degrees Farenheit."