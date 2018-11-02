class CLI 
  
  def call 
    welcome
    menu
  end
  
  def welcome
    puts "If the season ended today..."
    puts ""
  end
  
  def menu 
    puts "Choose one of the following numbers:"
    puts ""
    puts <<~HEREDOC
      1. AFC Playoff Teams 
      2. NFC Playoff Teams 
      3. AFC First Round Bye 
      4. AFC Home Field Advantage
      5. NFC First Round Bye
      6. NFC Home Field Advantage
      7. AFC Wild Card 
      8. NFC Wild Card 
      9. Exit 
    HEREDOC
    
    input = gets.strip
    case input 
      when "1"
        Scrape.afc_playoff_teams
        menu
      when "2"
        Scrape.nfc_playoff_teams
        menu
      when "3"
        Scrape.afc_bye
        menu
      when "4"
        Scrape.afc_home_field
        menu
      when "5"
        Scrape.nfc_bye
        menu
      when "6"
        Scrape.nfc_home_field
        menu
      when "7"
        Scrape.afc_wild_card
        menu 
      when "8"
        Scrape.nfc_wild_card
        menu 
      when "9"
        goodbye
        exit 
      else 
        puts "I don't understand please choose again."
        puts ""
        menu
    end
  end
  
  def goodbye
    puts "Goodbye. Check back next week for an update."
  end
end