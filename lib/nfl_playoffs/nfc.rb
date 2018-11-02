class NFC
  extend Display
  
  attr_accessor :name, :wins, :losses, :ties 
  
  @@all = []
  
  def self.scrape_nfc
    
  end
  
  def self.all 
    @@all 
  end
end