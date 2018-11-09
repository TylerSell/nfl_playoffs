class AFC
  extend Display
  
  attr_accessor :name, :wins, :losses, :ties, :city, :combined
  
  @@all = []
  
  def self.scrape_afc
    doc = Nokogiri::HTML(open("https://www.si.com/nfl/standings/playoff"))
    teams_table = doc.at_css("table:nth-child(2)")
    rows = teams_table.at_css("tr")
    
    teams = rows.each do |row|
      team = self.new
      team.city = row.css("td.team-column div.collapse-narrow--inline-block div.team-city a").text 
      team.name = row.css("td.team-column").css("div.collapse-narrow--inline-block").css("div.team-name a").text 
      team.combined = "#{team.city} #{team.name}"
      team.wins = row.css("td.numeric-score wins").text.strip
      team.losses = row.css("td.numeric-score losses").text.strip
      team.ties = row.css("td.numeric-score draws").text.strip
    end
    
    @@all << teams
  end
  
  def self.all 
    self.scrape_afc
    @@all 
  end
  
end