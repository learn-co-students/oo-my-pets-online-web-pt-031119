require 'pry'
class Owner
  attr_accessor :pets, :name, :fish
  attr_reader :species

  @@all = []
  @@count = 0

  def initialize(name)
    @name = name
    @species = species
    @@count += 1
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
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
    @species = "human"
  end

  def say_species
    "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    @pets[:cats][0].mood = "happy"
  end

  def feed_fish
    @pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    pets.each do |k, v|
      v.each do |ele|
        ele.mood = "nervous"
      end
    end
    pets.clear
  end

  def list_pets
    fish = @pets[:fishes].count
    dogs = @pets[:dogs].count
    cats = @pets[:cats].count

    "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
  end

end
