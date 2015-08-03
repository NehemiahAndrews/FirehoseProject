# fruits.rb written by Nehemiah Andrews
# This program was written in response to the 
# {Lesson 29 Coding Exercise} from theFirehoseProject

require_relative 'banner'

fruits = []

fruits << "Apples"
fruits << "Oranges"
fruits << "Strawberries"
fruits << "Mangoes"
fruits << "Grapes"
fruits << "Pomegranates"
fruits << "Bananas"

fruits.each do |f|
  puts "Om nom nom #{f}"  
end


