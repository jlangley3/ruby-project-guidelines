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
