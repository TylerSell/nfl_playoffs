class AFC
  extend Display
  
  attr_accessor :name, :wins, :losses, :ties, :city, :combined
  
  @@all = []
  
  def self.scrape_afc
    doc = Nokogiri::HTML(open(https://www.si.com/nfl/standings/playoff))
    
    team = self.new 
    team.city = 
    team.name = 
    team.combined = 
    team.wins = 
    team.losses = 
    team.ties = 
    
    @@all << team 
  end
  
  def self.all 
    self.scrape_afc
    @@all 
  end
  
end