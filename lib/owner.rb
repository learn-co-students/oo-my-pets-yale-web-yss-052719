require "pry"
class Owner

  attr_reader :species
  attr_accessor :name, :pets

  @@all = []

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
  
  def initialize(species)
    @species = species
    @pets = {:fishes => [], :dogs => [], :cats => []}

    @@all << self
  end

  def say_species
    return "I am a #{species}."
  end

  def pets
    @pets
  end

  def buy_fish(name)
    owner_fish = Fish.new(name)
    @pets[:fishes] << owner_fish
  end

  def buy_cat(name)
    owner_cat = Cat.new(name)
    @pets[:cats] << owner_cat
  end

  def buy_dog(name)
    owner_dog = Dog.new(name)
    @pets[:dogs] << owner_dog
  end

  def walk_dogs
    @pets[:dogs].map do |change|
      # binding.pry
      change.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].map do |happyyy|
      happyyy.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].map do |happy_|
      happy_.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |arr, clss|
      clss.map do |alter|
        alter.mood = "nervous"
      end
    end
    @pets.clear
  end
  
  def list_pets
    fish_var = @pets[:fishes].count
    cat_var = @pets[:cats].count
    dog_var = @pets[:dogs].count
    # binding.pry
    "I have #{fish_var} fish, #{dog_var} dog(s), and #{cat_var} cat(s)."
  end

end