
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
                break
            end
            end
        end
  
        def get_search_terms  
            sleep 0.991
            comic = Comic.all.random
            comic.map{|title_page| puts "\n\n************\n#{title_page.name}\n************\n"}
            puts "\n"
            return_to_menu
        end

        def publish_range
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

        # def find_user_character
        #     puts "\n"
        #     puts "Please choose a character:"
        #     puts "\n"
        #     index_with_character = Character.all.each_with_index {|character, ind| puts "#{ind+1}. #{character.name}\n"}
        #     input = gets.chomp.to_i
        #     return_character = index_with_character.find_all {|char| index_with_character.find_index(char)+1 == input}
        #     return return_character[0]
        # end

        # def find_user_series
        #     puts "\n"
        #     puts "Please choose a series:"
        #     puts "\n"
        #     index_with_series = Series.all.each_with_index {|series, ind| puts "#{ind+1}. #{series.name}\n"}
        #     input = gets.chomp.to_i
        #     return_series = index_with_series.find_all {|series| index_with_series.find_index(series)+1 == input}
        #     return return_series[0]
        # end

        # def find_user_comic
        #     puts "\n"
        #     puts "Please choose a comic:"
        #     puts "\n"
        #     index_with_comic = Comic.all.each_with_index {|comic, ind| puts "#{ind+1}. #{comic.name}\n"}
        #     input = gets.chomp.to_i
        #     return_comic = index_with_comic.find_all {|comic| index_with_comic.find_index(comic)+1 == input}
        #     return return_comic[0]
        # end

        def comics_for_character #3
            #this gives a list of characters to choose from, takes user input & returns comics name affiliated with character 
            found_character = find_user(Character).list_of_comics
            answers = found_character.join(" || ")
            puts "\n-\n#{answers}\n-\n\n"
            return_to_menu
        end

        def list_of_authors   #4
            found_authors = find_user(Character).authors
            answers = found_authors.join(" \n      &")
            puts "\n-\n#{answers}\n-\n\n"
            return_to_menu
        end
        

        
        def view_series_for_character   #5
            puts "\n-\n#{find_user(Character).series_name}\n-\n\n"
            return_to_menu
        end
        
        def view_character_alias      #6
            puts "\n-\n#{find_user(Series).alias}\n-\n\n"
            return_to_menu
        end

        
        def view_descriptions_for_series  #7
          puts "\n-\n#{find_user(Series).description}\n-\n\n"
          return_to_menu
        end

    
        def view_storylines_for_comics  #8

              puts "\n-\n#{find_user(Comic).storyline}\n-\n\n"
              return_to_menu
        end

        def return_to_menu
            # use gets to capture the user's input. This method should return that input, downcased.
            puts "\n\n"
            puts "Hit enter for menu"
            input = gets.chomp
            menu
        end





        def find_user(class_call)
            puts "\n"
            puts "Please choose a #{class_call}:"
            puts "\n"
            index_with_comic = class_call.all.each_with_index {|a, ind| puts "#{ind+1}. #{a.name}\n"}
            input = gets.chomp.to_i
            return_comic = index_with_comic.find_all {|a| index_with_comic.find_index(a)+1 == input}
            return return_comic[0]
        end


