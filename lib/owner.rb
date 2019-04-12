require 'pry'

class Owner
  attr_accessor :pets
  attr_reader :species, :name 

  @@all = []

  def self.all
    @@all 
  end 

  def self.count
    @@all.count 
  end 

  def self.reset_all 
    @@all.clear 
  end 

  def initialize(species)
    @species = species
    @@all << self 
  end
  
  def say_species
    "I am a human."
  end 

  def name=(name) 
    @name = name
  end 

  def pets  
    @pets = {:fishes => [], :dogs => [], :cats => []}  
  end 

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish 
    #binding.pry
      
     
  end 


   
  
  
  
end