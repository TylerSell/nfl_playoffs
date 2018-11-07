class AFC
  extend Display
  
  attr_accessor :name, :wins, :losses, :ties, :city, :combined
  
  @@all = []
  
  def self.scrape_afc
    
  end
  
  def self.all 
    self.scrape_afc
    @@all 
  end
  
end