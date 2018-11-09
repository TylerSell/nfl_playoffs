class AFC
  extend Display
  
  attr_accessor :name, :wins, :losses, :ties, :city, :combined
  
  def initialize(combined, wins, losses, ties)
    @combined = combined
    @wins = wins
    @losses = losses
    @ties = ties
    @@all << self 
  end
  
  @@all = []
  
  def self.scrape_afc
    doc = Nokogiri::HTML(open("https://www.si.com/nfl/standings/playoff"))
    teams_table = doc.at_css("table:nth-child(2)")
    rows = teams_table.css("tr").each do |row| 
       team_city = row.css("div.team-city a").text 
       team_name = row.css("div.team-name a").text 
       combined = "#{team_city} #{team_name}"
       wins = row.css("td.numeric-score.wins").text.strip
       losses = row.css("td.numeric-score.losses").text.strip
       ties = row.css("td.numeric-score.draws").text.strip
       AFC.new(combined, wins, losses, ties)
    end
    
  end
  
  def self.all 
    self.scrape_afc
    @@all 
  end
  
end