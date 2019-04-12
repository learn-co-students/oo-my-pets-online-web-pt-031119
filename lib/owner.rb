require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize (name, species)
    @name = name
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

  def name=(name)
    @name = name
  end
end
