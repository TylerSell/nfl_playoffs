class AFC
  extend Display
  
  attr_accessor :name, :wins, :losses, :ties, :city, :combined
  
  @@all = []
  
  def self.scrape_afc
    doc = Nokogiri::HTML(open("https://www.si.com/nfl/standings/playoff"))
    teams_table = doc.at_css("table:nth-child(2)")
    rows = teams_table.at_css("tr")
    rows = rows.select { |row| row.css!(".table-heading") }
    
    teams = rows.each do |row|
      team_city = row.css("td.team-column div.collapse-narrow--inline-block div.team-city a").text 
      team_name = row.css("td.team-column").css("div.collapse-narrow--inline-block").css("div.team-name a").text 
      combined = "#{team.city} #{team.name}"
      wins = row.css("td.numeric-score wins").text.strip
      losses = row.css("td.numeric-score losses").text.strip
      ties = row.css("td.numeric-score draws").text.strip
      AFC.new(combined, wins, losses, ties)
    end
    
  end
  
  def self.all 
    self.scrape_afc
    @@all 
  end
  
end