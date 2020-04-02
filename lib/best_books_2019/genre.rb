class BestBooks2019::Genre
    attr_accessor :name
    
    @@all = []

    def initialize(name) 
        @name = name 
        @@all << self
    end
    
    def self.all 
        BestBooks2019::Scraper.scrape_genres if @@all.empty?
        @@all 
    end
end