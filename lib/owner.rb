require "pry"

class Owner
  attr_reader :species 
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize (name)
    @name = name
    @@all << self
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  
  def self.all
    @@all 
  end
  
  def self.count
    @@all.size
  end
  
  def self.reset_all
    @@all.clear
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def buy_fish (name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
    @pets
  end
  
  def buy_cat (name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
    @pets
  end
  
  def buy_dog (name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog 
    @pets
  end
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end
  
  def sell_pets
    @pets.each do |category, animal|
     animal.each do |pet|
       pet.mood = "nervous"
     end
    end
    @pets.clear
  end
  
  def list_pets
    number_of_dogs = @pets[:dogs].size
    number_of_cats = @pets[:cats].size
    number_of_fish = @pets[:fishes].size
    "I have #{number_of_fish} fish, #{number_of_dogs} dog(s), and #{number_of_cats} cat(s)."
  end
end