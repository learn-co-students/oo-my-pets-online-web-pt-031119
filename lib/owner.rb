require 'pry'

class Owner
  attr_accessor :name, :pets, :mood
  @@all = []

  def initialize(name)
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}

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

  def species
    @species = "human"

  end

  def say_species
    "I am a #{species}."

  end

  def pets
    @pets
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
    @pets

  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
    @pets

  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
    @pets

  end

  def walk_dogs
    @pets[:dogs].map do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.map do |allPets,eachKind|
      eachKind.map do |data|
        data.mood = "nervous"
      end
    end
    @pets.clear

  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."

  end
end