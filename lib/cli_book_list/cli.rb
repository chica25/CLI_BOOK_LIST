require 'pry'

class CLI 
   #user and data
  
   def start
    puts "Welcome to Google Books!"
      sleep(1)
    API.get_books
    print_book_titles
    book_list_user_input
    book_selection
    selection
   end

     #list of book titles
     def print_book_titles
      BookList.all.each.with_index(1) do |book, index|
         puts "#{index}. #{book.title}"
   end

   def book_list_user_input
      #puts "Please  the list of books that are currently available to read:"
      puts "Plese enter 'y' to see the list of books, or 'exit' to leave the library!"
      select = gets.chomp.upcase
      if select == "y" || select == "Y"
         print_book_titles
         puts "Please select a book title:"
      elsif
         #invalid output, user needs to select again
         invalid 
      else 
         #give the user a goodbye message
         goodbye
      end
   end

   def invalid
      puts "Please try again"
      book_list_user_input
   end

   def goodbye
      puts "Hope to see you again!"
   end
   
   def book_selection   
      index = gets.chomp.to_i - 1
      last_element = BookList.all.size - 1 
      if index.between?(0,last_element)
          display_book(index)
      else
          puts "Please enter a valid number:"
          book_selection
      end
  end

  def display_book(index)
   system "clear"
   book = BookList.all[index]
   puts "Book Title: #{book.title}"
   puts "Author(s): #{book.authors}"
   puts "Publisher: #{book.publisher}"
end


   def selection
      puts "\n\nWould you like to select a different title? 'yes' or 'no'?"
      input = gets.chomp.downcase
      if input == "yes" || input == "y"
          print_book_titles
          book_selection
          selection
      else  
          puts "Goodbye"
      end
  end

   end
end