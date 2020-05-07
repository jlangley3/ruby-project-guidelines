
require_relative '../config/environment.rb'
# class Cli
#     attr_accessor :start_year, :end_year
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
      when user_call = 4
        list_of_authors
        break
      when user_call = 5
        view_series_for_character
        break
      when user_call = 6
        view_character_alias
        break
      when user_call = 7
        view_descriptions_for_series
        break
      when user_call = 8
        view_storylines_for_comics
    #     break
    #   when user_call == "exit"
    #     return
    #   else
    #     menu
        break
      end
    end
  end
  
    def get_search_terms  
        # ("L O A D I N G\n").split(" ").each {|c| print c ; sleep 0.25}
        sleep 0.991
        comic = Comic.random
         comic.map{|title_page| puts "\n\n************\n#{title_page.name}\n************\n"}
         puts "\n"
         return_to_menu
    end

    def publish_range
    #puts "\nPerfect! Thanks! \n\n"
    ("L O A D I N G! \n").split(" ").each {|c| print c ; sleep 0.25}
        puts "\n\nI need a range of dates by year.\n\n" 
        ("L O A D I N G\n").split(" ").each {|c| print c ; sleep 0.25}
        puts "\n"
        puts "\nEarliest year first...\n\n"
        start_year = gets.chomp
        if start_year.downcase == "exit"
            menu 
        elsif start_year.to_i == nil  
            puts "WRONG! Try again please!"
            puts "\n"
            publish_range
        elsif start_year.to_i < 1900 
            puts "WRONG! Try again please!"
            puts "\n"
            publish_range
        elsif start_year.to_i > 2099
            puts "WRONG! Try again please!"
            puts "\n"
            publish_range
        else
            start_year
        end
        puts "\n"
        puts "Ok great! Now type in a 4 digit year END year\n\n"
        end_year = gets.chomp
        if end_year.downcase == "exit"
            menu
        # elsif end_year.to_i == nil  
        #     start_year = end_year 
        elsif end_year.to_i < 1900
            puts "WRONG! Try again please!"
            puts "\n"
            publish_range
        elsif end_year.to_i < start_year.to_i
            puts "WRONG! Try again please!"
            puts "\n"
            publish_range
        else
            end_year
        end
            puts "\nPerfect! Thanks! \n"
    answer = Comic.publish_range(start_year.to_i, end_year.to_i)
    if answer == []
        puts "\n********************\n\n"
        puts "Sorry No Results Found"
        puts "\n********************\n"
        return_to_menu
    else
        answer.map do |publication| 
        puts "\n*\n#{publication.name}\n*\n\n"
        end
        return_to_menu
    end
end




        def find_user_character
            puts "Please choose a character:"
            index_with_character = Character.all.each_with_index {|character, ind| puts "#{ind+1}. #{character.name}"}
            
            input = gets.chomp.to_i
            return_character = index_with_character.find_all {|char| index_with_character.find_index(char)+1 == input}
            # binding.pry
            return return_character[0]
            
            # character = return_character.find_by(name: input_plus_number)
            # # return character
        end

        #saima
        def comics_for_character
            #this gives a list of characters to choose from,
            #takes user input 
            #returns comics name affiliated with character 
            found_character = find_user_character
            puts found_character.list_of_comics

            #
            # puts "1. Spiderman"
            # puts "2. Black Panther"
            # list_of_characters.all.map do |S|
            # input = gets.chomp
            # character = Character.find_by(name: input)
            # # spiderman.list_of_comics
            # # last_character = Character.last
            # puts character.list_of_comics
            
            # self.list_of_comics
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
            puts "please enter a series name"
            input = gets.chomp
          if input.empty?
            puts "You did not put anything in!"
            view_descriptions_for_series
          end
          input.gsub!(" ", "")
          input.downcase
          input.capitalize
          description = Series.all.where(name: input).pluck(:description)
          if description == []
            puts "\n********************\n\n"
            puts "Sorry No Results Found"
            puts "\n********************\n"
            return_to_menu
        else
            description = description.join
          print "\n-\n#{description}\n-\n\n"
            return_to_menu
        end
    end

        #jesse
        def view_storylines_for_comics
            puts "please enter a comic name"
            input = gets.chomp
          if input.empty?
            puts "You did not put anything in!"
            view_descriptions_for_series
          end
          input.downcase
          input.capitalize
            comic = Comic.all.where(name: input).pluck(:storyline)
            if comic == []
                puts "\n********************\n\n"
                puts "Sorry No Results Found"
                puts "\n********************\n"
                return_to_menu
            else
                comic = comic.join(" ")
              print "\n-\n#{comic}\n-\n\n"
                return_to_menu
            end
        end

        # def return_to_menu
        #     puts "Type menu to return to menu"
        #     input = gets.chomp
        #     if input == "menu"
        #     menu  
        #     end
        
        # end

        def return_to_menu
            # use gets to capture the user's input. This method should return that input, downcased.
            puts "Hit enter for menu"
            input = gets.chomp
            menu
        end

# spider_man = Character.find_or_create_by(name: "Spiderman", alias: "Peter Parker")






