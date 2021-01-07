### Name
# class Person
#   attr_writer :name

#   def name
#     puts @name
#   end
# end

# person1 = Person.new
# person1.name = 'Jessica'
# puts person1.name

### Choose the right method
# class Person
#   attr_accessor :name
#   attr_writer :phone_number
# end

# person1 = Person.new
# person1.name = 'Jessica'
# person1.phone_number = '0123456789'
# puts person1.name

### Access Denied
# class Person
#   attr_reader :phone_number

#   def initialize(number)
#     @phone_number = number
#   end
# end

# person1 = Person.new(1234567899)
# puts person1.phone_number

# person1.phone_number = 9987654321
# puts person1.phone_number

### Comparing Names
# class Person
#   attr_writer :first_name, :last_name
#   attr_reader :first_name

#   def first_equals_last?
#     first_name == last_name
#   end

#   private

#   attr_reader :last_name
# end

# person1 = Person.new
# person1.first_name = 'Dave'
# person1.last_name = 'Smith'
# puts person1.first_equals_last?

### Who is Older?
# class Person
#   attr_writer :age

#   def older_than?(other)
#     age > other.age
#   end

#   protected

#   attr_reader :age
# end

# person1 = Person.new
# person1.age = 17

# person2 = Person.new
# person2.age = 26

# puts person1.older_than?(person2)

### Guaranteed Formatting
# class Person
#   attr_reader :name

#   def name=(name)
#     @name = name.capitalize
#   end
# end

# person1 = Person.new
# person1.name = 'eLiZaBeTh'
# puts person1.name

### Prefix the Name
# class Person
#   attr_writer :name

#   def name
#     "Mr. " + @name
#   end
# end

# person1 = Person.new
# person1.name = 'James'
# puts person1.name

### Avoid Mutation
# class Person
#   # attr_reader :name

#   def initialize(name)
#     @name = name
#   end

#   def name
#     @name.dup
#   end
# end

# person1 = Person.new('James')
# puts person1.name.reverse!
# puts person1.name

### Calculated Age
# class Person
#   def age=(age)
#     @age = age * 2
#   end

#   def age
#     @age * 2
#   end
# end

# class Person
#   def age=(age)
#     @age = double(age)
#   end

#   def age
#     double(@age)
#   end

#   private

#   def double(age)
#     age * 2
#   end
# end

# person1 = Person.new
# person1.age = 20
# puts person1.age

class Person
  def name=(full_name)
    split_name = full_name.split(' ')
    @first_name = split_name.first
    @last_name = split_name.last.empty? ? '' : split_name.last
  end

  def name
    "#{@first_name} #{@last_name}"
  end
end

person1 = Person.new
person1.name = 'John Doe'
puts person1.name