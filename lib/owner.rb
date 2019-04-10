class Owner
  OWNERS = []
  attr_accessor :name, :pets
  attr_reader :species
  
   def initialize(name)
    @name = name
    OWNERS << self
  end

 
  def self.all
    OWNERS
  end
  def self.count 
    OWNERS.size
  end
  def self.reset_all 
    OWNERS.clear
  end
  def initialize(species)
    @species = species
    OWNERS << self
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end
  def say_species 
    "I am a #{species}."
  end
  def buy_fish(name)
    @pets[:fish] << Fish.new(name)
  end
 
  
end