class Owner
  attr_accessor :cat, :dog, :fish, :name, :pets
  attr_reader :species 
  
  @@all = []
  
  def initialize(name)
    @name = name 
     @species = "human"
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self 
  end 
  
  def say_species
   "I am a #{@species}."
  end 

  def buy_cat(name_of_cat)
    @pets[:cats] << Cat.new(name_of_cat)
  end
  
  def buy_dog(name_of_dog)
    @pets[:dogs] << Dog.new(name_of_dog)
  end 


  def buy_fish(name_of_fish)
    @pets[:fishes] << Fish.new(name_of_fish)
  end 

 def walk_dogs
    @pets.collect do |species, instance|
      if species == :dogs
        instance.each do |dog|
          dog.mood = "happy"
        end
      end
    end
  end
  
  def play_with_cats
       @pets.collect do |species, instance|
      if species == :cats
        instance.each do |cat|
          cat.mood = "happy"
        end
      end
    end
  end
  
      def feed_fish
       @pets.collect do |species, instance|
      if species == :fishes
        instance.each do |fish|
          fish.mood = "happy"
        end
      end
    end
  end
  
  
  def list_pets
    num_of_dogs = @pets[:dogs].size 
    num_of_cats = @pets[:cats].size
    num_of_fishes = @pets[:fishes].size
    
    "I have #{num_of_fishes} fish, #{num_of_dogs} dog(s), and #{num_of_cats} cat(s)."
    
  end 
  
  def sell_pets
    @pets.collect do |species, instances|
      instances.each do |pet|
        pet.mood = "nervous"
      end
      instances.clear
    end
  end
  
    def self.count 
      @@all.size
   end 
  
    def self.reset_all
      @@all.clear
    end
    
    def self.all 
      @@all 
    end 
  
  
end