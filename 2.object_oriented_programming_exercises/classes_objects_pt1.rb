### Find the class
# puts "Hello".class
# puts 5.class
# puts [1, 2, 3].class

### Create the class
# class Cat
  
# end

### Create the object
# kitty = Cat.new

### What are you?
# class Cat
#   def initialize
#     puts "I'm a cat!"
#   end
# end

# kitty = Cat.new

### Hello, Sophie!
# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   # def name
#   #   @name
#   # end

#   # def name=(new_name)
#   #   @name = new_name
#   # end

#   def greet
#     puts "Hello, My name is #{name}!"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet
# kitty.name=("Luna")
# kitty.greet

### Walk the cat
module Walkable
  def walk
    puts "Let's go for a walk"
  end
end

class Cat
  include Walkable

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new('Sophie')
kitty.greet
kitty.walk