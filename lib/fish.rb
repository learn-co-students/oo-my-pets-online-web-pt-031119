require 'pry'
class Fish
  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

  def fish_name=(name)
    @name = name
  end
end
