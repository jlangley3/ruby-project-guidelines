def get_api
    #make the web request
    response_array = []
    counter = 0
    while counter <= 2000
    response_string = RestClient.get("http://gateway.marvel.com/v1/public/characters?ts=1&apikey=e52d887d0abdb7be3d552bdcd336787f&hash=15898380eb317e59a304343c08c1ae09&limit=100&offset=#{counter}")
    response_hash = JSON.parse(response_string)
    response_array << response_hash
    counter += 100
    end
  end
  
  
#   def send_request(url)
#     # sending a request to marvel API
#     # takes url as string
#     # returns a hash of info about that film
#     response = RestClient.get(url)
#     return JSON.parse(response)
#   end

#   def series
#     get_api["data"]["results"]
#   end

#   def series_titles
#     series.map do |i|
#         i["title"]
#     end
#   end

# #   def all_characters
# #     char_items = series.map do |i|
# #         i["characters"]["items"]
# #     end
# #     char_items.map do |i|
# #         i[0]
# #     end
# #   end

# #  puts all_characters

# #  get_api
















def menu
    puts "What would you like to do?"
         # puts "What would you like to search for?\n\n"
        puts "1. Find a random comic\n\n"
        puts "2. Find comics by publish date"
        main_menu_loop
    end
    def main_menu_loop
        while user_input != "exit"
          case last_input.to_i
          when 1
            get_search_terms
            break
          when 2
            get_comics_by_publisher_range
            break
          else
            menu
            break
          end
        end
      end

      def user_input
        @last_input = gets.strip
      end

      def get_search_terms
        # get some search terms from the user
        puts "Would you like a random comic?\n" + "Type: yes or no\n\n"
        
        input = gets.chomp
        if input.empty?
            puts "You must type yes or no"
            input = get_search_terms
        elsif input.downcase == "yes"
            puts "\nPlease Wait...\n\n"
            (". . . . . . . . . . . L O A D I N G . . . . . . . . . . . . .Done! \n").split(" ").each {|c| print c ; sleep 0.25}
            comic = Comic.random
             comic.map{|title_page| puts "\n\n*********************\n#{title_page.name}\n*********************\n"}
             puts "\n\n"
        elsif input.downcase == "no"
            puts "\n***************\n"
            puts "\nYour response was NO?????\n"
            puts "\n***************\n"
            ("P l e a s e . . . . .L e a v e\n. . . . . N o w !\n").split(" ").each {|c| print c ; sleep 0.25}
            puts "\n"
            puts "Just a joke next question"
            puts "\n***************\n"
        else
            puts "\n\nPlease read the directions! Type only yes or no please...gosh\n\n"
            get_search_terms
        end
        return input
    end
    
    def get_comics_by_publisher_range
        
        #puts "******************************\n\n"
        puts "Would you like a list of comics by date?\n" + "Type: yes or no\n\n"
        
        input = gets.chomp
        if input.empty?
            puts "You must type yes or no"
            input = get_comics_by_publisher_range
        elsif input.downcase == "yes"
            puts "\nPlease Wait...\n\n"
            (". . . . . \n").split(" ").each {|c| print c ; sleep 0.25}
            puts "\n\nOk great! What I need from you are a range of dates by year.\n\n" 
            (". . L O A D I N G  . . Done! . . .\n").split(" ").each {|c| print c ; sleep 0.25}
            puts "\n"
            puts "\nFirst I need you to type in a 4 digit START year first...\n\n"
            start_year = gets.chomp
            puts "\n"
            if start_year.to_i == nil  
                puts "WRONG! Try again please!"
                puts "\n"
                start_year = gets.chomp
            elsif start_year.to_i < 1900 
                puts "WRONG! Try again please!"
                puts "\n"
                start_year = gets.chomp
            elsif start_year.to_i > 2030
                puts "WRONG! Try again please!"
                puts "\n"
                start_year = gets.chomp
            end
            puts "Ok great! now I need you to type in a 4 digit year END year\n\n"
            end_year = gets.chomp
            puts "\n"
            if end_year.to_i == nil  
                puts "WRONG! Try again please!"
                puts "\n"
                end_year = gets.chomp
            elsif end_year.to_i < 1900 
                puts "WRONG! Try again please!"
                puts "\n"
                end_year = gets.chomp
            elsif end_year.to_i > 2030
                puts "WRONG! Try again please!"
                puts "\n"
                end_year = gets.chomp
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
            get_comics_by_publisher_range
        end
        return input
    end


    #jesse
    def view_descriptions_for_series
        puts find_user_series.description
    #     puts "please enter a series name"
    #     input = gets.chomp
    #   if input.empty?
    #     puts "You did not put anything in!"
    #     view_descriptions_for_series
    #   end
    #   input.gsub!(" ", "")
    #   input.downcase
    #   input.capitalize
    #   description = Series.all.where(name: input).pluck(:description)
    #   if description == []
    #     puts "\n********************\n\n"
    #     puts "Sorry No Results Found"
    #     puts "\n********************\n"
    #     return_to_menu
    # else
    #     description = description.join
    #   print "\n-\n#{description}\n-\n\n"
    #     return_to_menu
    # end
end

    #jesse
    def view_storylines_for_comics
        puts find_user_comic.storyline
    #     puts "please enter a comic name"
    #     input = gets.chomp
    #   if input.empty?
    #     puts "You did not put anything in!"
    #     view_descriptions_for_series
    #   end
    #   input.downcase
    #   input.capitalize
    #     comic = Comic.all.where(name: input).pluck(:storyline)
    #     if comic == []
    #         puts "\n********************\n\n"
    #         puts "Sorry No Results Found"
    #         puts "\n********************\n"
    #         return_to_menu
    #     else
    #         comic = comic.join(" ")
    #       print "\n-\n#{comic}\n-\n\n"
    #         return_to_menu
    #     end
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
        puts "\n\n"
        puts "Hit enter for menu"
        input = gets.chomp
        menu
    end

# spider_man = Character.find_or_create_by(name: "Spiderman", alias: "Peter Parker")

