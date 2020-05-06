
def welcome
    # Welcoming the user to our program
    puts "**********************************\n\n"
    puts "Welcome to the CLI Marvel Library!\n\n"
    puts "**********************************\n\n"
    sleep 0.80
    menu
end

def menu
        sleep 0.01
        puts "Type the NUMBER of the thing you would like to do below."
            sleep 0.25
        puts "\n\n"
        puts "1. Find a random comic."
        puts "2. Find comics by publish date."
        puts "3. Find list of comics for a character."
        puts "4. List authors of a comic."
        puts "5. View all series for a character."
        puts "6. View a characters alias."
        puts "7. View decriptions for series."
        puts "8. View storylines for comics."
        puts "\n\n"
        puts "Type 'exit' to leave."
        puts "\n"
        main_menu_loop
    
end

def user_input
    input = gets.chomp
end

def main_menu_loop
    user_call = user_input 
    while user_call != "exit"
      case user_call.to_i
      when user_call = 1
        get_search_terms
        break
      when user_call = 2
        publish_range
        break
      else
        menu
        break
      end
    end
  end
  
def get_search_terms
        (". L O A D I N G . \n").split(" ").each {|c| print c ; sleep 0.25}
        sleep 0.991
        comic = Comic.random
         comic.map{|title_page| puts "\n\n*********************\n#{title_page.name}\n*********************\n"}
         puts "\n\n"
         return_to_menu
end

def publish_range
    start_year = get_start_year
    end_year = get_end_year
    puts "\nPerfect! Thanks! \n\n"
    (". . . . . L O A D I N G . . . . .Done! \n").split(" ").each {|c| print c ; sleep 0.25}
    answer = Comic.publish_range(start_year.to_i, end_year.to_i).map{|publication| puts "\n\n*********************\n#{publication.name}\n*********************\n"}
    if answer == nil
        puts "\n********************\n"
        puts "Sorry No Results Found"
        puts "\n********************\n"
    else puts answer
    end
    menu
end

def get_start_year
        sleep 0.20
        puts "\n"
        ("W a i t . . . \n").split(" ").each {|c| print c ; sleep 0.25}
        puts "\n\nOk great! I need range of dates by year.\n\n" 
        (". . L O A D I N G  . .\n").split(" ").each {|c| print c ; sleep 0.25}
        puts "\n"
        puts "\nEarliest year first...\n\n"
        start_year = gets.chomp
        puts "\n"
        if start_year.to_i == nil  
            puts "WRONG! Try again please!"
            puts "\n"
            get_start_year
         
        elsif start_year.to_i < 1900 
            puts "WRONG! Try again please!"
            puts "\n"
            get_start_year
            
        elsif start_year.to_i > 2099
            puts "WRONG! Try again please!"
            puts "\n"
            get_start_year
        end
        return start_year
    end

    def get_end_year
            puts "Ok great! Now type in a 4 digit year END year\n\n"
            end_year = gets.chomp
            puts "\n"
        if end_year.to_i == nil  
            puts "WRONG! Try again please!"
            puts "\n"
            get_end_year
        elsif end_year.to_i < get_start_year.to_i
            puts "WRONG! Try again please!"
            puts "\n"
            get_end_year
        elsif end_year.to_i >= 2099
            puts "WRONG! Try again please!"
            puts "\n"
            get_end_year
        else
            puts "\nPerfect! Thanks! \n\n"
            return end_year
        end
    end

        def return_to_menu
            puts "Type menu to return to menu"
            input = gets.chomp
            if input == "menu"
            menu  
            end
        
    end

 

    def return_to_menu
        # use gets to capture the user's input. This method should return that input, downcased.
        puts "Type menu to return to menu"
        input = gets.chomp
        input_downcase = input.downcase 
        if input_downcase.strip.empty?
          puts "You must type menu"
          input = return_to_menu
        elsif input == "menu"
        menu
        else 
            menu
        end
        return input.downcase 
      end