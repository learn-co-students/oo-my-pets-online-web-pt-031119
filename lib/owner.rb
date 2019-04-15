require 'pry'
class Owner
  attr_reader :species, :name
  attr_accessor :name, :pets, :fish, :dog, :cat
    @@all = []

   def initialize(name)
       @name = name
       @pets = {:fishes => [], :dogs => [], :cats=> []}
       @species = "human"
       @@all << self
   end

  def self.all 
    @@all 
  end

  def self.count 
    #@@all.length - mine works. 
    self.all.length
  end     #def 

  def self.reset_all 
    #@@all.clear 
    self.all.clear
  end     #def 
    
  def say_species
    return "I am a #{@species}."  
  end     #def 
  
  #owner.buy_fish("Bubbles")
  
 # def buy_fish(name)
 #   fish = Fish.new(name)
 #   @@all << fish 
 # end     #def 
  
  def buy_fish(fish)
    @pets[:fishes] << Fish.new(fish)
  end
  
  def buy_cat(cat)
    @pets[:cats] << Cat.new(cat)
  end
  
  def buy_dog(dog)
    @pets[:dogs] << Dog.new(dog)
  end

    #owner.walk_dogs
    #expect(dog.mood).to eq("happy")

  def walk_dogs  
    @pets[:dogs].each do |dog|
      dog.mood = 'happy'
    end 
  end     #def 
  
  def play_with_cats 
    @pets[:cats].each do |cat|
      cat.mood = 'happy'
    end 
  end     #def 
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = 'happy'
    end 
  end     #def 
  
  def sell_pets
    all_pets = @pets[:fishes] + @pets[:dogs] + @pets[:cats]
    all_pets.map do |pet|
      pet.mood = "nervous"
    end 
    pets.clear
  end     #def 
  
  def list_pets 
    pet_list = "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end     #def 

end



