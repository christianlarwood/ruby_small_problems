class Something
  def initialize
    @data = 'Hello'
  end

  def dupdata
    @data + @data
  end

  def self.dupdata
    'ByeBye'
  end
end

thing = Something.new
puts Something.dupdata # this will output "ByeBye" and return nil
puts thing.dupdata # this will output HelloHello and return nil
