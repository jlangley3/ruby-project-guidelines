
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
            puts "What would you like to do?\n"
                sleep 0.01
            puts "(Please type corresponding number)"
                sleep 0.25
            puts "\n\n"
            puts "1. Find a random comic."
            puts "2. Find comics by publish date."
            puts "3. Find a list of comics for a character."
            puts "4. List authors for a comic."
            puts "5. View all series for a character."
            puts "6. View a character's alias."
            puts "7. View decriptions for a series."
            puts "8. View the storyline for a comic."
            puts "9. View the list of all the character's secret identities."
            puts "10. Everything you want to know about a character."
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
                when user_call = 9
                    all_character_alias
                    break
                when user_call = 10
                    everything_from_a_character
                    break
                end
            end
        end
  
        def get_search_terms  
            sleep 0.991
            comic = Comic.all.random
            comic.map{|title_page| puts "\n\n-\n#{title_page.name}\n-\n"}
            puts "\n"
            return_to_menu
        end

        def publish_range
            ("L O A D I N G\n").split(" ").each {|c| print c ; sleep 0.25}
            puts "\n\nI need a range of dates by year.\n\n" 
            puts "\nPlease enter the first four digit year (ex: 1990):\n\n"
            start_year = gets.chomp
            if start_year.downcase == "exit"
                menu 
            elsif start_year.to_i == nil  
                puts "\nWRONG! Try again please!"
              
                publish_range
            elsif start_year.to_i < 1900 
                puts "\nWRONG! Try again please!"
               
                publish_range
            elsif start_year.to_i > 2099
                puts "\nWRONG! Try again please!"
                publish_range
            else
                start_year
            end
            puts "\n"
            puts "\nPlease enter the last four digit year (ex: 2010):\n\n"
            end_year = gets.chomp
            if end_year.downcase == "exit"
                menu
            elsif end_year.to_i > 2099
                puts "\nWRONG! Try again please!"
                publish_range
            elsif end_year.to_i < start_year.to_i
                puts "\nWRONG! Try again please!"
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
                puts "\n-#{publication.name}\n"
                end
                return_to_menu
            end
        end

        def comics_for_character #3
            #this gives a list of characters to choose from, takes user input & returns comics name affiliated with character 
            found_character = find_user(Character).list_of_comics
            answers = found_character.join(", ")
            puts "\n-\n#{answers}\n-\n\n"
            puts "These are all the comics for your character"
            return_to_menu
        end

        def list_of_authors   #4
            found_authors = find_user(Character).authors
            answers = found_authors.join(" & ")
            puts "\n-\n#{answers}\n-\n\n"
            puts "This is who wrote your character's comic"
            return_to_menu
        end
        

        def view_series_for_character   #5
            puts "\n-\n#{find_user(Character).series_name}\n-\n\n"
            puts "This is your character's series"
            return_to_menu
        end
        
        def view_character_alias      #6
            puts "\n-\n#{find_user(Character).alias}\n-\n\n"
            puts "This is your character's alias"
            return_to_menu
        end

        
        def view_descriptions_for_series  #7
          puts "\n-\n#{find_user(Series).description}\n-\n\n"
          puts "This is your series description"
          return_to_menu
        end

    
        def view_storylines_for_comics  #8
              puts "\n-\n#{find_user(Comic).storyline}\n-\n\n"
              puts "This is your comic storyline"
              return_to_menu
        end

        def all_character_alias
           puts "\n"
           found_alias = Character.all_aliases
           answers = found_alias.join("\n")
           puts "\n-\n#{answers}\n-\n\n"
           return_to_menu
        end
        
        def everything_from_a_character
            #findout everything for your favorite charcter
            character = find_user(Character)
            comics = character.list_of_comics.join(", ")
            authors = character.authors.join(", ")
            puts "Name: #{character.name}, Alias: #{character.alias}\n\n"
            puts "Comics: #{comics}\n\n"
            puts "Authors: #{authors}\n\n"
            puts "Series: #{character.series_name}\n\n"
            puts "Series description: #{character.series.description}\n\n"
        end

        def return_to_menu
            # use gets to capture the user's input. This method should return that input, downcased.
            puts "\n"
            puts "Hit enter for menu"
            input = gets.chomp
            menu
        end

        def find_user(class_call)
            puts "\n"
            puts "Please choose a #{class_call}:"
            puts "\n"
            puts "(Type corresponding number)\n\n"
            index_with_comic = class_call.all.each_with_index {|a, ind| puts "#{ind+1}. #{a.name}\n"}
            puts "\n"
            input = gets.chomp.to_i
            if input > index_with_comic.length || input < 1
                puts "Please enter a valid number"
                find_user(class_call) 
            else
            return_comic = index_with_comic.find_all {|a| index_with_comic.find_index(a)+1 == input}
            # binding.pry
            return return_comic[0]
            end
        end


