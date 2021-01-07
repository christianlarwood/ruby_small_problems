class Machine
  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def get_switch
    switch
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

l = Machine.new
p l.start
p l.switch # won't work because method is private outside of the class
p l.get_switch