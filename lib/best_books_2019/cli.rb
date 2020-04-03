class BestBooks2019::CLI
    def call
        puts "\nWelcome. Check out Goodreads' Best Books of 2019!"
        get_genres
        list_genres
        get_user_genre
        # get_books_for(genre)
        # list books
    end

    def get_genres 
        @genres = BestBooks2019::Genre.all
    end 

    def list_genres 
        puts "\nPick a genre."
        
        @genres.each.with_index(1) do |genre, index| 
            puts "#{index}. #{genre.name}"
        end
    end

    def get_user_genre
        picked_genre = gets.chomp.strip.to_i 
        show_books_for(picked_genre) if valid_input(picked_genre, @genres)
    end
    
    def valid_input(input, data)
        input.to_i <= data.length && input.to_i > 0
    end
    
    def show_books_for(picked_genre)
        genre = @genres[picked_genre - 1]
        books = genre.books 
        puts "\nHere are the best books in 2019 for the #{genre.name} genre"
        # BestBooks2019::Book.all.each.with_index(1) do |book, index|
        #     puts Book.name
        # end
        # get_user_book
    end
end