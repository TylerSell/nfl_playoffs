class NFC
  extend Display
  
  attr_accessor :name, :wins, :losses, :ties, :city, :combined 
  
  @@all = []
  
  def self.scrape_nfc
    
  end
  
  def self.all 
    self.scrape_nfc
    @@all 
  end
end