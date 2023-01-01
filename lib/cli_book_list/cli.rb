require 'pry'

class CLI 
   #user and data
   
   def start
      # binding.pry
    puts "Welcome to Google Books!"
    puts "Please enter the book title:"
    API.get_books
    binding.pry
    book_title(user_input)
   end

   def user_input
      gets.strip
   end

   def book_title(title)
      puts "Great choice!"
      puts "Please view the list:"
      puts "Input 'y' to see the list, 'exit' to leave the library!"
      menu
   end

   def goodbye
      puts "Hope to see you again!"
   end

   def invalid
      puts "Please try again"
      menu
   end

   def book_selection
      puts "Select a book:"
   end

   def menu
      select = user_input

         if select == 'y'
            #print book selection
            book_list
            menu
         elsif select == 'exit'
            #give the user a goodbye message
            goodbye
         else 
            #invalid output, user needs to select again
            invalid
      end
   end
end