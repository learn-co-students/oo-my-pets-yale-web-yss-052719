class Owner
	attr_reader :species
	attr_accessor :pets, :name

	@@all = []

	def initialize(species)
		@species = species
		@pets = {
			cats: [],
			dogs: [],
			fishes: []
		}
		@@all << self
	end

	def say_species
		"I am a #{@species}."
	end

	def buy_fish(fish)
		newFish = Fish.new(fish)
		self.pets[:fishes] << newFish
	end

	def buy_cat(cat)
		newCat = Cat.new(cat)
		self.pets[:cats] << newCat
	end

	def buy_dog(dog)
		newDog = Dog.new(dog)
		self.pets[:dogs] << newDog
	end

	def walk_dogs
		self.pets[:dogs].each do |dog|
			dog.mood = "happy"
		end
	end

	def play_with_cats
		self.pets[:cats].each do |cat|
			cat.mood = "happy"
		end
	end

	def feed_fish
		self.pets[:fishes].each do |fish|
			fish.mood = "happy"
		end
	end

	def sell_pets
		self.pets.each do |type, pets|
			pets.each do |pet|
				pet.mood = "nervous"
			end
			pets.clear
		end
	end

	def list_pets
		"I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
	end

	def self.all
		@@all
	end

	def self.count
		@@all.count
	end

	def self.reset_all
		@@all.clear
	end
end