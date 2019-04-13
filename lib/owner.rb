require 'pry'
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @pets = {fishes:[], dogs:[],cats:[]}
  end


  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(fish_name)
    fish = Fish.new(fish_name)
    @pets[:fishes] << fish
    # self.save
  end

  def buy_cat(cat_name)
    cat = Cat.new(cat_name)
    @pets[:cats] << cat
  end

  def buy_dog(dog_name)
    dog = Dog.new(dog_name)
    @pets[:dogs] << dog
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
    @pets.each do |pet_type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {fishes:[], dogs:[],cats:[]}
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end


end
