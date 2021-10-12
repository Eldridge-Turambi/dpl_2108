class Library
  attr_reader :name,
              :books,
              :authors

  def initialize(name)
    @name = name
    @books = []
    @authors = []
  end

  def add_author(author_name)
     author_name.books.each do |book|
       @books << book
     end
    @authors << author_name
    # @books << author_name.books
    # @books.flatten
  end

  def publication_time_frame_for(author)
    time_frame = {}

    sorted_books = author.books.sort_by do |book|
      book.publication_year
    end

    time_frame[:start] = sorted_books.first.publication_year
    time_frame[:end] = sorted_books.last.publication_year

    time_frame


    # @sorted_books = author.books.sort_by do |book|
    #   book.publication_year
    # end
    #
    # {
    #   start: @sorted_books.publication_year.first,
    # end: @sorted_books.publication_year.last
    # }

     # {:start => "#{author.books.publication_year.min}", :end => "#{author.books.publication_year.max}"}

  end
end
