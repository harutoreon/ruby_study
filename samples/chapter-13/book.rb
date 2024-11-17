class Book
  def initialize(title:, author:, publisher:)
    @title, @author, @publisher = title, author, publisher
  end

  def full_title
    "#{@author}「#{@title}」#{@publisher}"
  end
end
