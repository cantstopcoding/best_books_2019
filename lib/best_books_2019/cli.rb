class BestBooks2019::CLI
    def call
        puts "\nWelcome. Check out Goodreads' Best Books of 2019!"
        get_genres
        list_genres
        get_user_genre
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
        puts "\nPick a genre."
        
        @genres.each.with_index(1) {|month, index| puts "#{index}. #{month}"}
    end

    def get_user_genre
        picked_genre = gets.chomp.strip
        binding.pry 
        # if valid_input(picked_genre.to_i)

        # end

        def valid_input(input, data)
            input.to_i <= @genres.length && input > 0
        end
    end
end