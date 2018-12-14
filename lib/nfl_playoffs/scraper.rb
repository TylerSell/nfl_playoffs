class Scraper
  def self.doc
    @@doc ||= Nokogiri::HTML(open("https://www.si.com/nfl/standings/playoff"))
  end


  def self.scrape_afc

    teams_table = self.doc.at_css("table:nth-child(2)")
    # rows = teams_table.css("tr").each do |row|
    #    team_city = row.css("div.team-city a").text
    #    team_name = row.css("div.team-name a").text
    #    combined = "#{team_city} #{team_name}"
    #    wins = row.css("td.numeric-score.wins").text.strip
    #    losses = row.css("td.numeric-score.losses").text.strip
    #    ties = row.css("td.numeric-score.draws").text.strip
    #    AFC.new(combined, wins, losses, ties)
    # end
    self.rows(AFC, teams_table)
  end

  def self.scrape_nfc
    # doc = Nokogiri::HTML(open("https://www.si.com/nfl/standings/playoff"))
    teams_table = @@doc.at_css("table:nth-child(6)")
    # rows = teams_table.css("tr").each do |row|
    #    team_city = row.css("div.team-city a").text
    #    team_name = row.css("div.team-name a").text
    #    combined = "#{team_city} #{team_name}"
    #    wins = row.css("td.numeric-score.wins").text.strip
    #    losses = row.css("td.numeric-score.losses").text.strip
    #    ties = row.css("td.numeric-score.draws").text.strip
    #    NFC.new(combined, wins, losses, ties)
    #  end
    self.rows(NFC, teams_table)
  end

  def self.rows(division, teams_table)
    rows = teams_table.css("tr").each do |row|
       team_city = row.css("div.team-city a").text
       team_name = row.css("div.team-name a").text
       combined = "#{team_city} #{team_name}"
       wins = row.css("td.numeric-score.wins").text.strip
       losses = row.css("td.numeric-score.losses").text.strip
       ties = row.css("td.numeric-score.draws").text.strip
       division.new(combined, wins, losses, ties)
    end
  end



end
