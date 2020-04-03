class BestBooks2019::Genre
    attr_accessor :name, :books 
    
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

    def get_books
        BestBooks2019::Scraper.scrape_books(self) if @books.empty?
    end
end