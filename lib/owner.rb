class Owner
  # initialize with species
  # buy a pet
  # change a pet's mood
  # sell all of its pets
  attr_accessor :name, :pets
  attr_reader :species
  # can't change species

  @@all = []
  # know all about its pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = {fishes: [], cats: [], dogs: []}
    #is initialized with a pets attribute as a hash
  end

  def self.all
    #all returns all instances of Owner that have been created
    @@all
  end

  def self.count
    #returns the number of owners that have been created
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def buy_fish(name)
    #Make a new instance of the appropriate pet, initializing it with that name
    fish = Fish.new(name)
    #add to @pets fishes
    pets[:fishes] << fish
    # knows about its fishes
  end

  def buy_cat(name)
    #instance of the Cat class
    cat = Cat.new(name)
    pets[:cats] << cat
  end

  def buy_dog(name)

    dog = Dog.new(name)
    pets[:dogs] << dog
  end

  def walk_dogs
    # walks the dogs which makes the dogs' moods happy
    pets[:dogs].map do |dog| dog.mood = "happy"
    end
  end


  def play_with_cats
    pets[:cats].map do |cat| cat.mood = "happy"
    end
  end

  def feed_fish
    pets[:fishes].map do |fish| fish.mood = "happy"
    end
  end

  def sell_pets
    # iterate through hash to get to mood
    pets.each do |species, pets|
      pets.map do |pet| pet.mood = "nervous"
      end
      #sell all its pets
      pets.clear
  end
end

  def list_pets
    "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
  end

end
