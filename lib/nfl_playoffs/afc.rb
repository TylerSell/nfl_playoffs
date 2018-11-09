class AFC
  extend Display
  
  attr_accessor :name, :wins, :losses, :ties, :city, :combined
  
  @@all = []
  
  def self.scrape_afc
    doc = Nokogiri::HTML(open("https://www.si.com/nfl/standings/playoff"))
    teams_table = doc.at_css("table:nth-child(2)")
    rows = teams_table.at_css("tr").each do |row|
      team_city = row.css("div.team-city a").text 
      team_name = row.css("div.team-name a").text 
      combined = "#{team.city} #{team.name}"
      wins = row.css("td.numeric-score.wins").text.strip
      losses = row.css("td.numeric-score.losses").text.strip
      ties = row.css("td.numeric-score.draws").text.strip
      AFC.new(combined, wins, losses, ties)
    end
    
  end
  
  def self.all 
    self.scrape_afc
    @@all.shift
    @@all 
  end
  
end