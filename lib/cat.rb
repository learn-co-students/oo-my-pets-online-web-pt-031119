class Cat
  # code goes here
  
  attr_accessor :name 
  
  @@all = []
  
  def initialize (name)
  @name = name.freeze
  @@all << self 
  #@mood = "nervous"
  end
  
  def mood
  @mood = "nervous"
  
  if @mood = "playful"
    puts "playful"
  else 
    puts "nervous"
  end 
  end 
end