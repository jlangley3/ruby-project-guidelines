
def welcome
    # Welcoming the user to our program
    puts "**********************************\n\n"
    puts "Welcome to the CLI Marvel Library!\n\n"
    puts "**********************************\n\n"
    sleep 3.05
    menu
end

def menu
    puts "What would you like to do?"
        sleep 0.99
        puts "What would you like to search for?\n\n"
        sleep 0.99
        puts "___________________________________\n"
        puts "1. Find a random comic"
        sleep 0.99
        puts "___________________________________"
        puts "2. Find comics by publish date"
        sleep 0.99
        puts "___________________________________"
        puts "Type 'exit' to leave."
        puts "___________________________________"
        main_menu_loop
    end

def user_input
    user_input = gets.chomp
end

def main_menu_loop
    user_input
    while user_input != "exit"
      user_input.to_i
      when user_input = 1
        get_search_terms
        break
      when user_input = 2
        get_comics_by_publisher_range
        break
      else
        menu
        break
      end
    end
  end

  
def get_search_terms
        (". . . . . . L O A D I N G . . . . .Done! \n").split(" ").each {|c| print c ; sleep 0.25}
        sleep 0.991
        comic = Comic.random
         comic.map{|title_page| puts "\n\n*********************\n#{title_page.name}\n*********************\n"}
         puts "\n\n"
         menu
end

def get_comics_by_publisher_range


def get_start_year
        puts "\nPlease Wait...\n\n"
        sleep 0.99
        (". . . . . \n").split(" ").each {|c| print c ; sleep 0.25}
        puts "\n\nOk great! I need range of dates by year.\n\n" 
        (". . L O A D I N G  . . Done! . . .\n").split(" ").each {|c| print c ; sleep 0.25}
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
        puts "Ok great! now I need you to type in a 4 digit year END year\n\n"
        end_year = gets.chomp
        puts "\n"
        if end_year.to_i == nil  
            puts "WRONG! Try again please!"
            puts "\n"
            get_comics_by_publisher_range
        elsif end_year.to_i < start_year.to_i
            puts "WRONG! Try again please!"
            puts "\n"
            get_comics_by_publisher_range
        elsif end_year.to_i > 2030
            puts "WRONG! Try again please!"
            puts "\n"
            get_comics_by_publisher_range
        end
        puts "\nPerfect! Thanks! \n\n"
        (". . . . . . . . . . . L O A D I N G . . . . . . . . . . . . .Done! \n").split(" ").each {|c| print c ; sleep 0.25}
        answer = Comic.publish_range(start_year.to_i, end_year.to_i).map{|publication| puts "\n\n*********************\n#{publication.name}\n*********************\n"}
        if answer == nil
            puts "\n********************\n"
            puts "Sorry No Results Found"
            puts "\n********************\n"
        else puts answer
        end

    elsif input.downcase == "no"
        puts "\n***************\n"
        puts "\nYour response was NO?????\n"
        puts "\n***************\n"
        ("I . . . . H A V E . . . . N O . . . . T I M E  . . . . 4 . . . . Y O U!\n").split(" ").each {|c| print c ; sleep 0.25}
        puts "\n***************\n"
    else
        puts "\n\nPlease read the directions! Type only yes or no please...gosh\n\n"
        menu
    end
    return input
end

def publish_range
    puts "\nPerfect! Thanks! \n\n"
    (". . . . . . . . . . . L O A D I N G . . . . . . . . . . . . .Done! \n").split(" ").each {|c| print c ; sleep 0.25}
     answer = Comic.publish_range(start_year.to_i, end_year.to_i).map{|publication| puts "\n\n*********************\n#{publication.name}\n*********************\n"}
     if answer == nil
     end 
    end
     