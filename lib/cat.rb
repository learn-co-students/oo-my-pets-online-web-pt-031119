class Cat
  attr_accessor
  attr_reader :name
  attr_writer :mood

  def initialize (name)
    @name = name
    @mood = "nervous"
  end


end
