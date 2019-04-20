class Dog
  # code goes here
  attr_accessor :name 
  
  @@all = []
  
  def initialize (name)
  @name = name.freeze
  @@all << self 
  #@mood = "nervous"
end