class Owner

attr_reader :species
attr_accessor :name, :pets

@@all = []

def initialize(name)
  @name = name
  Owner.all << self
  @species = "human"
  @pets = {fishes: [], dogs: [], cats: []}
end

def self.all
  @@all
end

def self.count
Owner.all.count
end

def self.reset_all
  @@all = []
end

def say_species
  "I am a #{self.species}."
end

def buy_fish(name)
  new_fish = Fish.new(name)
  self.pets[:fishes].push(new_fish) 
end

def buy_cat(name)
  new_cat = Cat.new(name)
  self.pets[:cats].push(new_cat) 
end

def buy_dog(name)
  new_dog = Dog.new(name)
  self.pets[:dogs].push(new_dog) 
end

def walk_dogs
  self.pets[:dogs].each do |dog|
    dog.mood= "happy"
  end
end

def play_with_cats
  self.pets[:cats].each do |cat|
    cat.mood= "happy"
  end
end

def feed_fish
  self.pets[:fishes].each do |fish|
    fish.mood= "happy"
  end
end

def sell_pets
  self.pets.each do |species, instance_array|
    self.pets[species].each do |animal|
    animal.mood= "nervous"
    end
  end
  self.pets.clear
end

def list_pets
"I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
end



end