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
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def say_species
    "I am a human."
  end 

  def name=(name) 
    @name = name
  end 

  # def pets  
  #   @pets = {:fishes => [], :dogs => [], :cats => []}  
  # end 

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish 
    #binding.pry
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog 
  end 

  def walk_dogs
    pets[:dogs].each do |dog|
      dog.mood = "happy"
    end  
  end 

  def play_with_cats
    pets[:cats].each do |cat|
      cat.mood = "happy"
    end  
  end 

  def feed_fish
    pets[:fishes].each do |fish|
      fish.mood = "happy"
    end  
  end 

  def sell_pets
    @pets.each do |type, pet_array|
      pet_array.collect do |pet|
        pet.mood = "nervous"
      end
      pet_array.clear
    end 
  end
  
  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)." 
    
      #binding.pry
     
  end   
      





   
  
  
  
end