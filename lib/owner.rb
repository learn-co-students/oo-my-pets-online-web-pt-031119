require "pry"
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  attr_writer
  @@all = []

  def initialize(species)
    @species = species
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end
  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
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

  def walk_dogs
    @pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end
  def play_with_cats
    @pets[:cats].each do |x|
      x.mood = "happy"
    end
  end
  def feed_fish
    @pets[:fishes].each do |x|
      x.mood = "happy"
    end
  end
  def sell_pets
    @pets.each_pair do |key, val|
      @pets[key].each do |x|
        x.mood = "nervous"
      end
      @pets[key].clear
    end
  end

  def list_pets
    count = []
    @pets.each_pair do |key, val|
      count << @pets[key].size
    end
    fish_count = count[0]
    cat_count = count[1]
    dog_count = count[2]
    "I have #{fish_count} fish, #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

end
