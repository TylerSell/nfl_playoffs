class AFC
  extend Display
  
  attr_accessor :name, :wins, :losses, :ties, :city, :combined
  
  @@all = []
  
  def self.scrape_afc
    doc = Nokogiri::HTML(open(https://www.si.com/nfl/standings/playoff))
    teams_table = doc.at_css("table:nth-child(2)")
    rows = teams_table.at_css("tr")
    rows = rows.at_css(".table-heading").remove
    
    team = self.new
    
    rows.each do |row|
      team.city = row.at_css(".team-city a").text 
      team.name = row.at_css(".team-name a").text 
      team.combined = "#{team.city} #{team.name}"
      team.wins = row.at_css(".numeric-score wins").text 
      team.losses = row.at_css(".numeric-score losses").text
      team.ties = row.at_css(".numeric-score draws").text
    
    @@all << team 
  end
  
  def self.all 
    self.scrape_afc
    @@all 
  end
  
end