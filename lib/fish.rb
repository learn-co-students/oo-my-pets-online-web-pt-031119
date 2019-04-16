class Fish
  # code goes here
  
  attr_accessor :mood 
  
  def initialize(name)
    @name = name 
    self.mood = "nervous"
  end 
  
  def name 
    @name 
  end 
  
  
end