class Owner
  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def initialize(species)
    @species = species
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
  end

  def say_species
    "I am a #{species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |instance|
      instance.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |instance|
      instance.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |instance|
      instance.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |pet, array|
      array.each do |instance|
        instance.mood = "nervous"
      end
      array.clear
    end
  end

  def list_pets
    "I have #{self.pets[:fishes].length} fish, #{self.pets[:dogs].length} dog(s), and #{self.pets[:cats].length} cat(s)."
  end
end