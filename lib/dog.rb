class Dog
  # can initialize a dog
  # can't change its name
  # can change its mood
  attr_reader :name
  attr_accessor :mood
  
   def initialize(name, mood = "nervous")
     @name = name
     @mood = mood
   end

end
