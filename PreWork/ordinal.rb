# ordinal.rb written by Nehemiah Andrews
# This program was written in response to the 
# {Lesson 28 Challenge Problem} from theFirehoseProject

# Variables and initial input
print "Enter a number: "  
number = gets.chomp.to_i

# Methods

# The isSpecialCase method expects an integer input and determines if 
# the number is a special case number, ending in 11 - 13. 
# It returns a boolean value.
def isSpecialCase(n)
  n = n % 100
  return  (11 <= n && n <= 13)      
end

# The getSuffix method expects an integer argument and returns
# an ordinal string suffix
def getSuffix(n)
  if isSpecialCase(n)
    return "th"
  else  
    n = n % 10
    if n == 1
      return "st"
    elsif n == 2
      return "nd"
    elsif n == 3
      return "rd"
    else
      return "th"
    end
  end
end

# The getOrdinal method expects an integer argument and returns
# the string representing that number's ordinal.
def getOrdinal(n)
  return "#{n}#{getSuffix(n)}"
end
 
# Output
puts "The ordinal of the number #{number} is #{getOrdinal(number)}."

  
  

