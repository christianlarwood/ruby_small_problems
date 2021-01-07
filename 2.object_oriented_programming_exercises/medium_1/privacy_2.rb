class Machine
  # attr_reader :switch

  def start
    self.flip_switch(:on)
  end

  def stop
    self.flip_switch(:off)
  end

  def switch_position
    switch
  end

  private

  attr_accessor :switch

  def flip_switch(desired_state)
    self.switch = desired_state
  end
end

n = Machine.new
n.start
p n.switch_position
n.stop
p n.switch_position