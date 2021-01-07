class Person
  # attr_accessor :name

  def name
    @name
  end

  def name=(n)
    @name = n
  end

end

person1 = Person.new
person1.name = 'Jessica'
puts person1.name