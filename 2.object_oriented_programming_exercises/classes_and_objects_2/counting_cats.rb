class Cat
  @@kitty_kount = 0

  def initialize
    @@kitty_kount += 1
  end

  def self.total
    @@kitty_kount
  end
end



kitty1 = Cat.new
kitty2 = Cat.new

p Cat.total