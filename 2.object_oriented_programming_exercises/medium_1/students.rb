class Student
  def initialize(name, year)
    @name = name
    @year = year
  end
end

class Graduate < Student
  attr_reader :parking
  
  def initialize(name, year, parking)
    super(name, year)
    @parking = parking
  end
end

class Undergraduate < Student
  def initialize(name, year)
    super
  end
end

grad = Graduate.new("Steve", 2020, "yes")
p grad
p grad.parking

under = Undergraduate.new("Alex", 2024)
p under