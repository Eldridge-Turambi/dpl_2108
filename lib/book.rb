class Book
  attr_accessor :title

  def initialize(info)
    @author_first_name = info[:author_first_name]
    @author_last_name = info[:author_last_name]
    @title = info[:title]
    @publication_date = info[:publication_date]
  end

  def title
    @title
  end

  def author
    "#{@author_first_name} #{@author_last_name}"
  end

  def publication_year
    "#{@publication_date[-4..-1]}"
  end

end
