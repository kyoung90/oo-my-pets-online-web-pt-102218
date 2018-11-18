class Owner
  attr_reader :species
  attr_accessor :name, :pets
  
  @@all = []
  
  def initialize(species)
    @species = species
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
end