module Walkable
  def walk
    puts "#{self} #{gait} forward"
  end
  
end

class Noble
  include Walkable

  def initialize(name, title)
    @name = name
    @title = title
  end

  def to_s
    "#{@title} #{@name}"
  end

  def gait
    "struts"
  end
end

byron = Noble.new("Byron", "Lord")
byron.walk
# => "Lord Byron struts forward"