module Drivable
  def self.drive
  end
end

class Car
  include Drivable
  # attr_reader :drive
  def drive
  end
end

bobs_car = Car.new
bobs_car.drive