require "pry"
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  attr_writer
@@all = []
  def initialize(name)
    @name = name
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
  end

  def buy_fish(name)
    Fish.new(name)
    @pets.fishes << self
  end
  def buy_cat(name)
  end
  def buy_dog(name)
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
    "I am a #{species}."
  end
end
