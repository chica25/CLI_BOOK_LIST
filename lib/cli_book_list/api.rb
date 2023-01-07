require 'pry'

class API
    # binding.pry
    API_KEY = ENV['API_KEY']
    # BASE_URL = "https://www.googleapis.com/books/v1/volumes?q=fantasy&key=#{API_KEY}"
    BASE_URL = "https://www.googleapis.com/books/v1/volumes?q=fantasy&maxResults=5&key=#{ENV['API_KEY']}"
    def self.get_books
        # binding.pry
        uri = URI.parse(BASE_URL)
        response = Net::HTTP.get_response(uri)
        json = JSON.parse(response.body)
        json['items'].each do |book|
            id = book['id']
            title = book['volumeInfo']['title']
            authors = book['volumeInfo']['authors']
            publisher = book['volumeInfo']['publisher']
            BookList.new(id, title, authors, publisher)
        end

    end
end

# binding.pry