class Shelter
  attr_accessor :owner_name, :animal_name

  adoptions = {}

  def adopt(owner_name, animal_name)
    # owner_name.pets << [animal_name.name, animal_name.type] 
    owner_name.pets[animal_name.name] = animal_name.type
    Shelter.adoptions[owner_name] = owner_name.pets
  end

  def print_adoptions
    puts "#{x} has adopted the following pets:"
    # @owner_name.pets.each do |pet|
    #   "a #{type} named #{name}"
    # end
  end
end

class Pet < Shelter
  attr_accessor :type, :name

  def initialize(type, name)
    @type = type
    @name = name
  end
end

class Owner < Shelter
  attr_accessor :name, :pets, :number_of_pets

  def initialize(name)
    @name = name
    @pets = {}
  end

  def list_of_pets
    @pets
  end

  def number_of_pets
    @pets.size
  end
end

butterscotch = Pet.new('cat', 'Butterscotch')
pudding      = Pet.new('cat', 'Pudding')
darwin       = Pet.new('bearded dragon', 'Darwin')
kennedy      = Pet.new('dog', 'Kennedy')
sweetie      = Pet.new('parakeet', 'Sweetie Pie')
molly        = Pet.new('dog', 'Molly')
chester      = Pet.new('fish', 'Chester')

phanson = Owner.new('P Hanson')
bholmes = Owner.new('B Holmes')

shelter = Shelter.new
shelter.adopt(phanson, butterscotch)
shelter.adopt(phanson, pudding)
shelter.adopt(phanson, darwin)
shelter.adopt(bholmes, kennedy)
shelter.adopt(bholmes, sweetie)
shelter.adopt(bholmes, molly)
shelter.adopt(bholmes, chester)
p phanson.list_of_pets
p Shelter.adoptions
shelter.print_adoptions
puts "#{phanson.name} has #{phanson.number_of_pets} adopted pets."
puts "#{bholmes.name} has #{bholmes.number_of_pets} adopted pets."