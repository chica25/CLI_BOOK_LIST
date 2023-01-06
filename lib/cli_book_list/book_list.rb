# require 'pry'

class BookList 
   
    @@all = []

    attr_accessor :id, :title, :author, :publisher
    

    def initialize(id, title, author, publisher)
        @id = id
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