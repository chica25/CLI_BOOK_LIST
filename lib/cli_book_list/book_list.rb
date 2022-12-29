class BookList 
    @@all = []

    attr_accessor :title, :author, :publisher
    

    def initialize(title, author, publisher)
        @title = title
        @author = author
        @publisher = publisher
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end