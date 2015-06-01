# disArray.rb written by Nehemiah Andrews
# This program was written in response to the 
# {Lesson 31 Coding Exercise} from theFirehoseProject

require_relative 'banner'

testArray = ["1","2","3","2","1"]

def unique(arr)
  returnArray = []

  arr.each do |a|
    if !returnArray.include?(a)    
      returnArray.push(a)
    end
  end
  
  return returnArray
end

puts "Starting Array: #{testArray}"
puts "Final Array: #{unique(testArray)}"

puts "Starting Array: #{testArray}"
puts "Final Array: #{testArray.uniq!}"



