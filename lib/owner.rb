class Owner
  attr_accessor :pets
  attr_reader
  attr_writer
@@all
  def initialize
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
  end

  def species
  end
  def say_species
  end
  def name
  end
  def pets
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

end
