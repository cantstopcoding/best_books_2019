class BestBooks2019::Genre
    attr_accessor :name 
    attr_writer :books 
    
    @@all = []

    def initialize(name) 
        @name = name 
        @books = []
        @@all << self
    end
    
    def self.all 
        BestBooks2019::Scraper.scrape_genres if @@all.empty?
        @@all 
    end

    def books 
        BestBooks2019::Scraper.scrape_books(self) if @books.empty?
        @books 
    end 
end