require 'pry'

class API
    # binding.pry
    API_KEY = ENV['API_KEY']
    BASE_URL = "https://www.googleapis.com/books/v1/volumes?q=key=#{API_KEY}"

    def self.get_books
        #  binding.pry
        uri = URI.parse(BASE_URL)
        response = Net::HTTP.get_response(uri)
        json = JSON.parse(response.body)
        # binding.pry
        json.each do |book|
            id = book['id']
            title = book['title']
            authors = book['authors']
            publisher = book['publisher']
            # binding.pry
            BookList.new(id, title, authors, publisher)
            # binding.pry
        end
        # binding.pry
    end
end

# binding.pry