module Move
  def walk
    puts "#{self} #{gait()} forward"
  end
end

class Noble
  include Move

  attr_accessor :name, :title

  def initialize(name, title)
    @name = name
    @title = title
  end

  def to_s
    "#{title} #{name}"
  end

  def gait
    "struts"
  end
end

class Person
  include Move
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "strolls"
  end
end

class Cat
  include Move
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "saunters"
  end
end

class Cheetah
  include Move
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end

  private

  def gait
    "runs"
  end
end

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"

byron.name
# => "Byron"
byron.title
# => "Lord"