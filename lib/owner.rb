class Owner
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
    @@all << self
  end 
  
  def self.all 
    
  end 
  
  def self.reset_all
    @@all.clear
  end 
  
  def self.count 
    @@all.size
  end 
end