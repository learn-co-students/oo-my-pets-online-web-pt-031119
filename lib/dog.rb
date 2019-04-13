require 'pry'
class Dog
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def dog_name=(name)
    @name = name
  end
end
