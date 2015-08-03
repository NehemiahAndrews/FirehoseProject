# loop.rb written by Nehemiah Andrews
# This program was written in response to the 
# {Lesson 30 Coding Example} from theFirehoseProject

require_relative 'banner'
n = 0

while n != 10
  puts "My favorite number is #{n}!"
  n += 1
end


10.times do |n|
  puts "Display this 10 times! Iteration number #{n}"
end
