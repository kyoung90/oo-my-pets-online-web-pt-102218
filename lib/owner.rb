class Owner
  attr_reader :species
  
  @@all = []
  
  def initialize(specie)
    @species = specie
  
  end 
  
  def self.all 
    
  end 
  
  def self.reset_all
    @@all.clear
  end 
end