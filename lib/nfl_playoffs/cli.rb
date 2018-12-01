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
      1. AFC Standings 
      2. NFC Standings
      3. Exit 
    HEREDOC
    
    input = gets.strip
    case input 
      when "1"
        AFC.playoff_teams
        puts ""
        puts "Would you like more information? Y/N"
        input = gets.strip.downcase
        if input == "y"
          
        elsif input == "n"
          
        else 
          puts "I don't understand."
        end
        menu
      when "2"
        NFC.playoff_teams
        menu
      when "3"
        AFC.bye_teams
        menu
      when "4"
        AFC.home_field
        menu
      when "5"
        NFC.bye_teams
        menu
      when "6"
        NFC.home_field
        menu
      when "7"
        AFC.wild_card
        menu 
      when "8"
        NFC.wild_card
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