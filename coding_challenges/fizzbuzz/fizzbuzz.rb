# Fizzbuzz.rb was created by Nehemiah Andrews
# to demonstrate an alternative to the classic
# Fizzbuzz problem without the Modulus operator

# Rules of the challenge
# Print numbers 1 - 100
# Divisible by 3 - Fizz
# Divisible by 5 - Buzz
# Divisible by 15 - Fizzbuzz


# Fizzbuzz problem using Modulus
puts "Begin Fizzbuzz Sample"
(1..100).each do |i|
    if i % 15 == 0
        puts "FizzBuzz"
    elsif i % 3 == 0
        puts "Fizz"
    elsif i % 5 == 0
        puts "Buzz"
    else
        puts i
    end
end

puts "End of Fizzbuz Sample\n\n"

# Fizzbuzz problem without Modulus
class Fizzbuzz

  def initialize
    puts "Begin Fizzbuzz Solution"
    self.go
    puts "End Fizzbuzz Solution\n\n"
  end

  def go
    (1..100).each do |i|
        if mod(i,15) 
            puts "FizzBuzz"
        elsif mod(i,3)
            puts "Fizz"
        elsif mod(i,5)
            puts "Buzz"
        else
            puts i
        end
    end
  end

  def mod(num,den)
    if num - den < 0
      false
    elsif num - den == 0
      true
    else
      num -= den
      mod(num,den)
    end
  end
end

buzz = Fizzbuzz.new()
