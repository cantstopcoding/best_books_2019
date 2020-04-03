class BestBooks2019::Book 
    attr_accessor :title, :genre, :summary
    
    @@all = []

    def initialize(title, genre) 
        @title = title  
        @genre = genre
        # Notify book about event
        add_to_genre
        @@all << self
    end

    def add_to_genre
        @genre.books << self unless @genre.books.include?(self) 
    end

    def self.all 
        @@all
    end 
end