class Cat
  # initialize a cat
  # initialize with a name
  # can't change name
  # initialize with "nervous" mood
  # can change mood
  attr_reader :name
  attr_accessor :mood


  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end

end
