require_relative "./best_books_2019/version"
require_relative "./best_books_2019/cli"
require_relative "./best_books_2019/genre"
require_relative "./best_books_2019/scraper"
require_relative "./best_books_2019/book"

require 'pry'
require 'nokogiri'
require 'open-uri'

module BestBooks2019
  class Error < StandardError; end
  # Your code goes here...
end
