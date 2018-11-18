class Owner
  attr_reader :species
  
  @@all = []
  
  def initialize(species)
    @species = species
  
  end 
  
  def self.all 
    
  end 
  
  def self.reset_all
    @@all.clear
  end 
end