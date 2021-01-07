module Drivable
  def drive
    puts "I can drive"
  end
end

class Car
  include Drivable
end

bobs_car = Car.new
bobs_car.drive