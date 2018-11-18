class Owner
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize(species)
    @species = species
    @pets = {
      :fishes => [],
      :dogs => [],
      :cats => []
    }
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
  def self.count 
    @@all.length
  end 
  
  def say_species 
    return "I am a #{self.species}."
  end 
  
  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end 
  
  def buy_cat(name)
    @pets[:cats ] << Cat.new(name)
  end 
  
  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end 
  
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end 
  end 
  
  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end 
  end 
  
  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end 
  end 
end