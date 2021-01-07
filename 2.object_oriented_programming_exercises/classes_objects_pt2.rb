### Generic Greeting
# class Cat
#   def self.generic_greeting
#     puts "Hello! I'm a cat"
#   end
# end

# kitty = Cat.new
# Cat.generic_greeting
# p kitty.class

### Hello, Chloe!
# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def rename(new_name)
#     # self.name = new_name
#   end
# end

# kitty = Cat.new('Sophie')
# p kitty.name
# kitty.rename('Chloe')
# p kitty.name

### Identify yourself
# class Cat
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#   end

#   def identify
#     self
#   end
# end

# kitty = Cat.new('Sophie')
# puts kitty.identify

### Generic Greeting Part 2
# class Cat
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def self.generic_greeting
#     puts "Hello! I'm a cat!"
#   end

#   def personal_greeting
#     puts "Hello! My name is #{name}"
#   end
# end

# kitty = Cat.new('Sophie')

# Cat.generic_greeting
# kitty.personal_greeting

### Counting Cats
# class Cat
#   @@count_of_cats = 0

#   def initialize
#     @@count_of_cats += 1
#   end

#   def self.total
#     @@count_of_cats
#   end
# end

# kitty1 = Cat.new
# kitty2 = Cat.new

# p Cat.total

### Colorful Cats
# class Cat
#   COLOR = "tabby"

#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def greet
#     puts "Hello! My name is #{name} and I'm a #{COLOR} cat"
#   end
# end

# kitty = Cat.new('Sophie')
# kitty.greet

### Identify Yourself Part 2
# class Cat
#   attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def to_s
#     "I'm #{name}"
#   end
# end

# kitty = Cat.new('Sophie')
# puts kitty

### Public Secret
# class Person
#   attr_accessor :secret
  
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# puts person1.secret

### Private Secret
# class Person
#   attr_writer :secret

#   def share_secret
#     puts secret
#   end

#   private

#   attr_reader :secret
# end

# person1 = Person.new
# person1.secret = 'Shh.. this is a secret!'
# person1.share_secret

### Protected Secret
class Person
  attr_writer :secret

  def compare_secret(other_person)
    secret == other_person.secret
  end

  protected

  attr_reader :secret
end

person1 = Person.new
person1.secret = 'Shh.. this is a secret!'

person2 = Person.new
person2.secret = 'Shh.. this is a different secret!'

puts person1.compare_secret(person2)