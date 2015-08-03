#type casting numbers
val1 = 2.5
val2 = val1.to_i
val3 = val2.to_f
val4 = val3.to_s
puts "Val1 is #{val1}"
puts "Val2 is #{val2}"
puts "Val3 is #{val3}"
puts "Val4 is #{val4.inspect}"


#seeming anomolies in programmatic division 
#are really just demonstrating the importance of types 
div = 10/2
puts "Div is #{div}"

div2 = 11/2
puts "Div2 is #{div2}"

div3 = 11.to_f/2
puts "Div3 is #{div3}"

#Math on strings
str1 = "macaroni"
str2 = " & cheese"

puts str1 + str2

str3 = "hello"
puts str3 * 10

str4 = "10"
puts str4 * 10

