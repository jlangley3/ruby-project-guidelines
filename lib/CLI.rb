
require_relative '../config/environment.rb'

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
      when user_call = 3
        comics_for_character
        break
      else
        menu
        break
      end
    end
  end
  
def get_search_terms
        ("L O A D I N G\n").split(" ").each {|c| print c ; sleep 0.25}
        sleep 0.991
        comic = Comic.random
         comic.map{|title_page| puts "\n\n************\n#{title_page.name}\n************\n"}
         puts "\n\n"
         return_to_menu
end

def publish_range
    puts "\nPerfect! Thanks! \n\n"
    ("L O A D I N G! \n").split(" ").each {|c| print c ; sleep 0.25}
    answer = Comic.publish_range(get_start_year.to_i, get_end_year.to_i).map do |publication| 
    puts "\n\n************\n#{publication.name}\n************\n"
end
    if answer == nil
        puts "\n********************\n"
        puts "Sorry No Results Found"
        puts "\n********************\n"
    else puts answer
    end
    menu
end

#jesse
def get_start_year
        sleep 0.20
        puts "\n"
        # ("W a i t . . . \n").split(" ").each {|c| print c ; sleep 0.25}
        puts "\n\nOk great! I need range of dates by year.\n\n" 
        ("L O A D I N G\n").split(" ").each {|c| print c ; sleep 0.25}
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

    #jesse
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

        #saima
        def comics_for_character
            puts "Please choose a character:"
            puts "1. Spider Man"
            puts "2. Black Panther"
            input = gets.chomp
            input = Character.last
            puts input.list_of_comics
        end

        #saima
        def list_of_authors
        end

        #josh
        def view_series_for_character
        end

        #josh
        def view_character_alias
        end

        #jesse
        def view_descriptions_for_series
        end

        #jesse
        def view_storylines_for_comics
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
        puts "Hit enter for menu"
        input = gets.chomp
        menu
end

# spider_man = Character.find_or_create_by(name: "Spiderman", alias: "Peter Parker")