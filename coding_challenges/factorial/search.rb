numbers = [7,4,6,1,9,22,9]
max = numbers[0]

numbers.each do |number|
  if number > max
    max = number
  end
end
  
looking_for = 22

found_index = false

def find_index(n)
  numbers.each_with_index do |number,i|
    if number == looking_for
      i
    end
  end
end
if found_index
  puts found_index
end

