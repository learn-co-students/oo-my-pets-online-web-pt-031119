require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize (species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
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
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat (name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog (name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].map do |dog|
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
    @pets.map do |pet_type, pet|
      pet.map {|a| a.mood = "nervous"}
    end
    @pets.clear
  end

  def list_pets
    f_count = @pets[:fishes].size
    c_count = @pets[:cats].size
    d_count = @pets[:dogs].size
    "I have #{f_count} fish, #{d_count} dog(s), and #{c_count} cat(s)."
  end
end
