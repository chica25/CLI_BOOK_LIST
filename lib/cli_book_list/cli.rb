require 'pry'

class CLI 
   #user and data
  
   def start
    puts "Welcome to Google Books!"
      sleep(2)
    API.get_books
    book_list
   #  binding.pry
   #  book_title(user_input)
   end

   def book_list_user_input
      #puts "Please  the list of books that are currently available to read:"
      puts "Plese enter 'y' to see the list of books, or 'exit' to leave the library!"
      input = gets.chomp.downcase
      if select == "y" || select == "Y"
         print_book_titles
      elsif
         #invalid output, user needs to select again
         puts "invalid"
      else 
         select == 'exit'
         #give the user a goodbye message
         puts "Goodbye"
      end
   end

   #list of book titles
   def print_book_titles
      BookList.all.each.with_index(1) do |book, index|
         puts "#{index}. #{book.title}
   end

   # Display book titles
   def book_titles
      puts 
   end

   # def user_input
   #    gets.strip
   # end

   # def book_title(title)
   #    puts "Great choice!"
   #    # puts "Please view the list:"
   #    puts "Enter 'y' to see the list, or 'exit' to leave the library!"
   #    # menu
   # end

   # def goodbye
   #    puts "Hope to see you again!"
   # end

   # def invalid
   #     puts "Please try again"
   #     menu
   # end

   # def book_selection
   #    puts "Select a book:"
   # end

   # def menu
   #    select = user_input

   #       if select == "y" || select == "Y"
   #          #print book selection
   #          # book_list
   #          # menu
   #          puts "test"
   #       elsif select == 'exit'
   #          #give the user a goodbye message
   #          goodbye
   #       else 
   #          #invalid output, user needs to select again
   #          invalid
   #    end
   end
end