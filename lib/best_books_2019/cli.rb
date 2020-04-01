class BestBooks2019::CLI
    def call
        puts "Welcome! Select a genre and see the best books in 2019 for it..."
        get_genres
        list_genres
        # get_user_genre
        # get_books_for(genre)
        # list books
    end

    def get_genres # get_advertised_genres
        # This is hard coded, and will be scraped
        @genres = [
            "Fiction",
            "Mystery & Thriller",
            "Historical Fiction",
            "Fantasy",
            "Romance",
            "Science Fiction",
            "Horror",
            "Humor",
            "Nonfiction",
            "Memoir & Autobiography",
            "History & Biography",
            "Science & Technology",
            "Food & Cookbooks",
            "Graphic Novels & Comics",
            "Poetry",
            "Debut Novel",
            "Young Adult Fiction",
            "Young Adult Fantacy",
            "Middle Grade & Children's",
            "Picture Books"
        ]
    end 

    def list_genres 
        @genres.each.with_index(1) {|month, index| puts "#{index}. #{month}"}
    end
end