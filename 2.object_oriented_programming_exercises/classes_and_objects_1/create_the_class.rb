class Cat
  # attr_reader :name
  # attr_writer :name
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # manual getter/reader method
  # def name
  #   @name
  # end

  # manual setter/writer method
  # def name=(name)
  #   @name = name
  # end

  def greet
    puts "Hello! My name is #{name}!"
  end
end

kitty = Cat.new("Sophie")
kitty.greet
kitty.name = "Luna"
kitty.greet