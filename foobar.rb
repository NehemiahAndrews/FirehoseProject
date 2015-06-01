# foobar.rb written by Nehemiah Andrews
# This program was written in response to the 
# {Lesson 32 Coding Challenge} from theFirehoseProject

# This program should prompt a user to input an integer, 
# then display a pattern based on the Foobar game rules.  
# Numbers divisible by 3 should be replaced by the word "Foo"
# Numbers divisible by 5 should be replaced by the word "Bar"
# Numbers divisible by both 3 and 5 should be replaced by the word "Foobar"

# Prompt user for input regarding number of digits of Foobar pattern
print "How many items do you want to see? "
digits = gets.chomp.to_i

# Create cascading logic (if,elsif, else) returning appropriate value ready for output.
def getFoobar(d)
  if (d % 3 == 0 && d % 5 == 0 )
    return "Foobar"
  elsif (d % 3 == 0)
    return "Foo"
  elsif (d % 5 == 0)
    return "Bar"
  else 
    return d    
  end
end

# Create counter and loop through selected number of items, outputting values to console.
counter = 1
while counter <= digits
  puts "#{getFoobar(counter)}" 
  counter += 1
end

