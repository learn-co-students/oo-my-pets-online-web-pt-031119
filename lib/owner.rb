require 'pry'

class Owner
  # code goes here
  
  attr_accessor :name, :fish, :pets
  
  @@all = []
  @@count = 0 
  
  def initialize(name)
    @name = name
    @@all << self
    @@count += 1 
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def self.all
    @@all 
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.reset_all
    @@count = 0
  end 
  
  def species
    @species = self.name  
  end 
  
  def say_species 
    @say_species = "I am a human."
    #binding.pry 
  end 
  
  def pets
    @pets
  end 
  
  def buy_fish(name_of_fish)
    @pets[:fishes] << Fish.new(name_of_fish)
  end 
  
  def buy_cat(name_of_cat)
    @pets[:cats] << Cat.new(name_of_cat)
  end 
  
  def buy_dog(name_of_dog)
    @pets[:dogs] << Dog.new(name_of_dog)
  end 
  
  def walk_dogs 
    @pets.collect do |species, instances|
      if species == :dogs 
        instances.each do |dog|
          dog.mood = "happy"
          #binding.pry 
        end
      end
    end 
  end 
  
    def play_with_cats 
    @pets.collect do |species, instances|
      if species == :cats 
        instances.each do |cat|
          cat.mood = "happy"
          #binding.pry 
        end
      end
    end 
  end
  
    def feed_fish 
    @pets.collect do |species, instances|
      if species == :fishes 
        instances.each do |fish|
          fish.mood = "happy"
          #binding.pry 
        end
      end
    end 
  end
  
    def sell_pets
    @pets.collect do |species, instances|
        instances.each do |pet|
          pet.mood = "nervous"
          #binding.pry 
        end
        instances.clear
      end
    end 
    
    def list_pets 
      num_dogs = @pets[:dogs].size 
      num_cats = @pets[:cats].size 
      num_fish = @pets[:fishes].size 
      return "I have #{num_fish} fish, #{num_dogs} dog(s), and #{num_cats} cat(s)."
    end
  
end