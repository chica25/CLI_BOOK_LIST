require 'pry'

class API
    # binding.pry
    KEY = ENV['API_KEY']
    BASE_URL = "https://www.googleapis.com/books/v1/volumes?key={KEY}"
    # binding.pry

    def self.get_books
        #  binding.pry
        data_url = BASE_URL
        uri = URI(data_url)
        response = Net::HTTP.get_response(uri)
        parsed_data = JSON.parse(response.body)
        # binding.pry
        parsed_data['data'].each do |books|
            title = books['title']
            author = books['author']
            publisher = books['publisher']
            BookList.new(title, author, publisher)
            # binding.pry
        end
    end
end

