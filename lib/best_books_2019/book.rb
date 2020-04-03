class BestBooks2019::Book 
    attr_accessor :title, :genre, :summary
    
    @@all = []

    def initialize(title, genre) 
        @title = title  
        @genre = genre
        @@all << self
    end
end