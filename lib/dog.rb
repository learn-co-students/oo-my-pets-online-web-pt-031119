
class Dog
  attr_reader :name
  attr_accessor :mood
  attr_writer :mood 
  
  def initialize(name)
    @name = name
    @mood = "nervous"
  end
  
  
  
end

