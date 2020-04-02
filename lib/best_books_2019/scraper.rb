class BestBooks2019::Scraper
    def self.scrape_genres
        site = "https://www.goodreads.com/choiceawards/best-books-2019"
        page = Nokogiri::HTML(open(site))
        binding.pry
    end
end 