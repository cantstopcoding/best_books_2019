class BestBooks2019::Scraper
    def self.scrape_genres
        site = "https://www.goodreads.com/choiceawards/best-books-2019"
        page = Nokogiri::HTML(open(site))
        genres = page.css("h4.category__copy")

        genres.each do |genre| 
            name = genre.text.strip
            BestBooks2019::Genre.new(name)
        end 
        # binding.pry
    end
end 