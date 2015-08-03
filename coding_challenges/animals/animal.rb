class Animal
  def eat
    puts "Om nom nom"
  end
end

class Dog < Animal
  def bark
    puts "woof"
  end
end

class Cat < Animal
  def meow
    puts "meow"
  end
end

class Duck < Animal
  def quack
    puts "quack quack"
  end
end

class GoldenRetriever < Dog
  def fetch
    puts "The dog runs to get the stick!"
  end
end

class Poodle < Dog
  def sit
    puts "The poodle sits."
  end
end

animal  = Animal.new
dog     = Dog.new
cat     = Cat.new
duck    = Duck.new
tucker  = GoldenRetriever.new
fancy   = Poodle.new

puts animal.is_a?(Poodle)
