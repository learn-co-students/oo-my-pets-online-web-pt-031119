class Owner
attr_reader :species
attr_accessor :pets, :name

@@all = []

def initialize(species)
  @species = species
  @pets = {:fishes => [], :dogs => [], :cats => []}
  @@all << self
end

def self.all
  @@all
end

def self.count
  @@all.count
end

def self.reset_all
  @@all.clear
end

def say_species
  string = "I am a #{@species}."
end


def buy_fish(name)
  pet = Fish.new(name)
  pets[:fishes].push(pet)

end


def buy_cat(name)
  pet = Cat.new(name)
  pets[:cats].push(pet)

end

def buy_dog(name)
  pet = Dog.new(name)
  pets[:dogs].push(pet)

end


def walk_dogs()
  # pets[:dogs].map do |dog|
  #   dog.mood = "happy"
  # end
  petmood(:dogs,"happy")
end

def play_with_cats
  # pets[:cats].map do |cat|
  #   cat.mood = "happy"
  # end
  petmood(:cats,"happy")
end

def feed_fish
  # pets[:fishes].map do |fish|
  #   fish.mood = "happy"
  # end
  petmood(:fishes,"happy")
end

def petmood(pettype,mood)
  pets[pettype].map do |pet|
    pet.mood = mood
  end
  end


def sell_pets
  petmood(:dogs,"nervous")
  petmood(:cats,"nervous")
  petmood(:fishes,"nervous")
  self.pets.clear
  # pets[:fishes].map do |fish|
  #   fish.mood = "nervous"
  # end
  #
  #   pets[:cats].map do |cat|
  #     cat.mood = "nervous"
  #   end
  #
  #     pets[:dogs].map do |dog|
  #       dog.mood = "nervous"
  #     end
end

def list_pets
  "I have #{pets[:fishes].count} fish, #{pets[:dogs].count} dog(s), and #{pets[:cats].count} cat(s)."
end






end
