class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def Owner.all
    @@all
  end

  def Owner.count
    @@all.count
  end

  def Owner.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    @pets[:dogs].each do |pup|
      pup.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |kit|
      kit.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |sashimi|
      sashimi.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |species, arr|
      arr.each do |animal|
        animal.mood = "nervous"
      end
      arr.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end
end