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
        puts ""
        puts "AFC Standings"
        puts ""
        AFC.standings
        puts ""
        puts "Would you like more information? Y/N"
        puts ""
        input = gets.strip.downcase
        if input == "y"
          puts ""
          puts <<~HEREDOC
            1. Playoff Teams  
            2. Home Field Advantage
            3. First Round Bye Teams
            4. Wild Card Teams 
            5. Main Menu 
          HEREDOC
          puts ""
          input = gets.strip
          case input 
            when "1"
              puts ""
              AFC.playoff_teams
              puts ""
              menu 
            when "2"
              puts ""
              AFC.home_field
              puts ""
              menu 
            when "3"
              puts ""
              AFC.bye_teams
              puts ""
              menu 
            when "4"
              puts ""
              AFC.wild_card
              puts ""
              menu 
            when "5"
              puts ""
              menu
          end
        elsif input == "n"
          menu 
        else 
          puts "I don't understand."
        end
        menu
      when "2"
        puts ""
        puts "NFC Standings"
        puts ""
        NFC.standings
        puts ""
        puts "Would you like more information? Y/N"
        puts ""
        input = gets.strip.downcase
        if input == "y"
          puts <<~HEREDOC
            1. Playoff Teams  
            2. Home Field Advantage
            3. First Round Bye Teams
            4. Wild Card Teams 
            5. Main Menu 
          HEREDOC
          input = gets.strip
          case input 
            when "1"
              NFC.playoff_teams
              menu 
            when "2"
              NFC.home_field
              menu 
            when "3"
              NFC.bye_teams
              menu 
            when "4"
              NFC.wild_card
              menu 
            when "5"
              menu
          end
        elsif input == "n"
          menu 
        else 
          puts "I don't understand."
        end
        menu
      when "3"
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