# require 'pry'

class BookList 
    attr_accessor :id, :title, :authors, :publisher
    @@all = []

def initialize(id, title, authors, publisher)
        @id = id
        @title = title
        @authors = authors
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