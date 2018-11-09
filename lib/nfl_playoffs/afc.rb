class AFC
  extend Display
  
  attr_accessor :name, :wins, :losses, :ties, :city, :combined
  
  @@all = []
  
  def self.scrape_afc
    doc = Nokogiri::HTML(open("https://www.si.com/nfl/standings/playoff"))
    teams_table = doc.at_css("table:nth-child(2)")
    rows = teams_table.at_css("tr")
    
    team = self.new
    
    rows.each do |row|
      team.city = row.css(".team-city a").text 
      team.name = row.css(".team-name a").text 
      team.combined = "#{team.city} #{team.name}"
      team.wins = row.css(".numeric-score wins").text 
      team.losses = row.css(".numeric-score losses").text
      team.ties = row.css(".numeric-score draws").text
    end
    
    @@all << team 
  end
  
  def self.all 
    self.scrape_afc
    @@all 
  end
  
end