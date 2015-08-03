# Dog.rb was written by Nehemiah Andrews
# Dog.rb exists to satisfy the Quiz #3 requirements for the Firehose Project
# Good dog.

class Dog
  attr_accessor(:name, :color, :breed)
  def initialize(name,color,breed="mutt")
    @name = name
    @color = color.downcase
    @breed = breed
  end

  def sit
    puts "Sit #{self.name}, sit. Good dog"
  end

  def show
    puts "#{self.name} is a #{self.color} #{self.breed}."
  end

end

ubu = Dog.new("Ubu","White")
ubu.show
ubu.sit
